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
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

public class FlutterModuleRnModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public FlutterModuleRnModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @NonNull
    @Override
    public String getName() {
        return "FlutterModuleRn";
    }

    @ReactMethod
    public void startFlutterActivity(String bearToken, int numberArgument, Callback callback) {
        Activity currentActivity = reactContext.getCurrentActivity();

        Intent intent = new Intent(currentActivity, CustomFlutterActivity.class);

        // Pass arguments to the Intent
        intent.putExtra("bearToken", bearToken);
        intent.putExtra("numberArgument", numberArgument);

        // Start the FlutterActivity with the Intent
        currentActivity.startActivity(intent);
        // we can pass arguments to the Intent
        callback.invoke("Received numberArgument: " + numberArgument + " stringArgument: " + bearToken);
    }
}