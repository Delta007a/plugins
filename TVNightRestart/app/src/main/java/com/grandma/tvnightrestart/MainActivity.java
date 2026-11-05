package com.grandma.tvnightrestart;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.accessibilityservice.AccessibilityService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class MainActivity extends Activity {
    private LinearLayout panel;
    private TextView info, last;
    private Button toggle;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        ScrollView scroll = new ScrollView(this);
        panel = new LinearLayout(this);
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setPadding(44, 25, 44, 25);
        scroll.addView(panel);
        setContentView(scroll);

        label("Ночная перезагрузка Xiaomi", 29);
        label("Каждый день автоматически. Без компьютера, root и ADB.", 17);
        info = label("", 23);
        button("− 1 час", v -> { Store.setHour(this, Store.hour(this)-1); refresh(); });
        button("+ 1 час", v -> { Store.setHour(this, Store.hour(this)+1); refresh(); });
        toggle = button("", v -> {
            boolean on = !Store.enabled(this);
            Store.setEnabled(this,on);
            Store.status(this,on ? "Расписание включено" : "Расписание выключено");
            refresh();
        });
        button("Разрешить управление меню", v -> startActivity(
                new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS)));
        last = label("", 16);
        refresh();
    }
    private TextView label(String value, int size) {
        TextView t = new TextView(this);
        t.setText(value); t.setTextSize(size);
        t.setPadding(0, 8, 0, 15);
        panel.addView(t); return t;
    }
    private Button button(String value, View.OnClickListener click) {
        Button b = new Button(this);
        b.setText(value); b.setAllCaps(false); b.setTextSize(20); b.setOnClickListener(click);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1,-2);
        lp.setMargins(0,5,0,5);
        panel.addView(b,lp); return b;
    }
    @Override protected void onResume() {
        super.onResume();
        if (info != null) refresh();
    }
    private void refresh() {
        boolean enabled = Store.enabled(this);
        info.setText((enabled ? "РАСПИСАНИЕ ВКЛЮЧЕНО" : "РАСПИСАНИЕ ВЫКЛЮЧЕНО")
                + String.format(Locale.ROOT,"\nКаждый день в %02d:00",Store.hour(this)));
        toggle.setText(enabled ? "Выключить расписание" : "Включить расписание");
        long next = Store.prefs(this).getLong("next",0L);
        String when = enabled && next > 0L
                ? DateFormat.getDateTimeInstance(DateFormat.SHORT,DateFormat.SHORT).format(new Date(next))
                : "—";
        last.setText("Следующий запуск: "+ when
                +"\nСлужба управления: "+ (Restart.current == null ? "не подключена" : "работает")
                +"\nПоследнее событие: "+Store.prefs(this).getString("status","нет"));
    }

    static final class Store {
        static SharedPreferences prefs(Context c) { return c.getSharedPreferences("tvnight",Context.MODE_PRIVATE); }
        static boolean enabled(Context c) { return prefs(c).getBoolean("enabled",false); }
        static int hour(Context c) { return prefs(c).getInt("hour",4); }
        static void status(Context c, String s) { prefs(c).edit().putString("status",s).apply(); }
        static void setEnabled(Context c, boolean on) {
            prefs(c).edit().putBoolean("enabled",on).apply(); plan(c);
        }
        static void setHour(Context c, int h) {
            prefs(c).edit().putInt("hour",(h+24)%24).apply(); plan(c);
        }
        static void plan(Context c) {
            AlarmManager alarm = (AlarmManager)c.getSystemService(Context.ALARM_SERVICE);
            PendingIntent intent = PendingIntent.getBroadcast(c,13,new Intent(c,AtTime.class),
                    PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
            alarm.cancel(intent);
            if (!enabled(c)) { prefs(c).edit().remove("next").apply(); return; }
            Calendar now = Calendar.getInstance(), next = Calendar.getInstance();
            next.set(Calendar.HOUR_OF_DAY,hour(c));
            next.set(Calendar.MINUTE,0); next.set(Calendar.SECOND,0); next.set(Calendar.MILLISECOND,0);
            if (!next.after(now)) next.add(Calendar.DAY_OF_YEAR,1);
            long millis = next.getTimeInMillis();
            try {
                alarm.setExactAndAllowWhileIdle(AlarmManager.RTC_WAKEUP,millis,intent);
            } catch (SecurityException ex) {
                alarm.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP,millis,intent);
            }
            prefs(c).edit().putLong("next",millis).apply();
        }
    }

    public static class AtBoot extends BroadcastReceiver {
        @Override public void onReceive(Context c, Intent i) { Store.plan(c); }
    }
    public static class AtTime extends BroadcastReceiver {
        @Override public void onReceive(Context c, Intent i) {
            Store.plan(c);
            if (!Store.enabled(c)) return;
            Restart service = Restart.current;
            if (service == null) {
                Store.status(c,"Пропущено: разреши службу специальных возможностей");
                return;
            }
            PowerManager pm = (PowerManager)c.getSystemService(Context.POWER_SERVICE);
            PowerManager.WakeLock wake = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,
                    "TVNightRestart:scheduled");
            wake.acquire(30000L);
            service.restart(wake);
        }
    }

    public static class Restart extends AccessibilityService {
        static volatile Restart current;
        private final Handler handler = new Handler(Looper.getMainLooper());
        private boolean running, fallback;
        private int taps, scrolls;
        private long started, availableAt;
        private PowerManager.WakeLock wake;

        @Override protected void onServiceConnected() {
            super.onServiceConnected();
            current=this; Store.status(this,"Служба управления меню включена");
        }
        @Override public void onDestroy() {
            if (current==this) current=null;
            finish(); super.onDestroy();
        }
        @Override public void onInterrupt() {}
        @Override public void onAccessibilityEvent(AccessibilityEvent event) {
            if (running) handler.postDelayed(this::inspect,250L);
        }
        void restart(PowerManager.WakeLock hold) {
            handler.post(() -> {
                finish(); wake=hold;
                running=true; fallback=false; taps=0; scrolls=0;
                started=SystemClock.elapsedRealtime();
                availableAt=started+800L;
                Store.status(this,"Открываю настройки");
                try {
                    Intent s=new Intent(Settings.ACTION_SETTINGS);
                    s.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    startActivity(s);
                } catch (Exception ex) { powerMenu(); }
                handler.postDelayed(this::inspect,1200L);
                handler.postDelayed(() -> {
                    if (running) fail("Не найден пункт перезагрузки");
                },24000L);
            });
        }
        private void inspect() {
            if (!running) return;
            long now=SystemClock.elapsedRealtime();
            if (now<availableAt) return;
            AccessibilityNodeInfo root=getRootInActiveWindow();
            if (root!=null) {
                AccessibilityNodeInfo r=find(root,true);
                if (r!=null && taps<3 && click(r)) {
                    taps++;
                    availableAt=now+1700L;
                    Store.status(this,"Нажала Перезагрузить");
                    handler.postDelayed(this::inspect,1900L);
                    return;
                }
                if (taps==0) {
                    AccessibilityNodeInfo sys=find(root,false);
                    if (sys!=null && click(sys)) {
                        availableAt=now+1400L;
                        Store.status(this,"Открыла Система");
                        handler.postDelayed(this::inspect,1600L);
                        return;
                    }
                    if (scrolls<7 && scroll(root)) {
                        scrolls++;
                        availableAt=now+650L;
                        handler.postDelayed(this::inspect,850L);
                        return;
                    }
                }
            }
            if (!fallback && now-started>7500L) powerMenu();
        }
        private void powerMenu() {
            fallback=true;
            boolean ok=performGlobalAction(GLOBAL_ACTION_POWER_DIALOG);
            Store.status(this,ok ? "Открываю системное меню питания" : "Меню питания недоступно");
            availableAt=SystemClock.elapsedRealtime()+900L;
            handler.postDelayed(this::inspect,1100L);
        }
        private AccessibilityNodeInfo find(AccessibilityNodeInfo node,boolean reboot) {
            if (node==null) return null;
            if (matches(node.getText(),reboot)||matches(node.getContentDescription(),reboot)) return node;
            for (int k=0;k<node.getChildCount();k++) {
                AccessibilityNodeInfo match=find(node.getChild(k),reboot);
                if (match!=null) return match;
            }
            return null;
        }
        private boolean matches(CharSequence label, boolean reboot) {
            if (label==null) return false;
            String s=label.toString().trim().toLowerCase(Locale.ROOT);
            if (!reboot) return s.equals("система")||s.equals("system");
            return s.equals("перезагрузить")||s.equals("перезагрузка")
                ||s.equals("перезапустить")||s.equals("restart")||s.equals("reboot")
                ||s.equals("restart now")||s.equals("reboot now");
        }
        private boolean click(AccessibilityNodeInfo node) {
            for (int i=0;i<6 && node!=null;i++,node=node.getParent()) {
                if (node.isClickable()&&node.isEnabled())
                    return node.performAction(AccessibilityNodeInfo.ACTION_CLICK);
            }
            return false;
        }
        private boolean scroll(AccessibilityNodeInfo node) {
            if (node==null) return false;
            if (node.isScrollable() && node.performAction(AccessibilityNodeInfo.ACTION_SCROLL_FORWARD))
                return true;
            for (int i=0;i<node.getChildCount();i++) if (scroll(node.getChild(i))) return true;
            return false;
        }
        private void fail(String reason) {
            Store.status(this,reason);
            try { performGlobalAction(GLOBAL_ACTION_HOME); } catch (Exception ignored) {}
            finish();
        }
        private void finish() {
            running=false;
            if (wake!=null) {
                if (wake.isHeld()) wake.release();
                wake=null;
            }
        }
    }
}
