package com.fluttermodulern;

import androidx.annotation.NonNull;
import android.app.Activity;
import android.content.Intent;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.bridge.Callback;
import com.facebook.react.modules.core.DeviceEventManagerModule;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class FlutterModuleRnModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private static final String METHOD_CHANNEL_NAME = "flutter_activity";

    public FlutterModuleRnModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
        initializeMethodChannel();
    }

    @NonNull
    @Override
    public String getName() {
        return "FlutterModuleRn";
    }

    private void initializeMethodChannel() {
        new MethodChannel(reactContext.getCatalystInstance().getReactQueue().getThread(), METHOD_CHANNEL_NAME)
                .setMethodCallHandler(
                        (call, result) -> {
                            if (call.method.equals("getArguments")) {
                                Intent intent = reactContext.getCurrentActivity().getIntent();
                                if (intent != null) {
                                    String bearToken = intent.getStringExtra("bearToken");
                                    int numberArgument = intent.getIntExtra("numberArgument", 0);
                                    result.success(bearToken + "|" + numberArgument);
                                } else {
                                    result.error("NO_INTENT", "Intent is null", null);
                                }
                            } else {
                                result.notImplemented();
                            }
                        }
                );
    }

    @ReactMethod
    public void startFlutterActivity(String bearToken, int numberArgument, Callback callback) {
        Activity currentActivity = reactContext.getCurrentActivity();

        Intent intent = FlutterActivity.createDefaultIntent(currentActivity);

        // Pass arguments to the Intent
        intent.putExtra("bearToken", bearToken);
        intent.putExtra("numberArgument", numberArgument);

        // Start the FlutterActivity with the Intent
        currentActivity.startActivity(intent);
        // we can pass arguments to the Intent
        callback.invoke("Received numberArgument: " + numberArgument + " stringArgument: " + bearToken);
    }
}