package com.fluttermodulern;

import android.content.Intent;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.embedding.engine.FlutterEngine;

public class CustomFlutterActivity extends FlutterActivity {
    private static final String CHANNEL = "flutter_activity";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            switch (call.method) {
                                case "getArguments":
                                    Intent intent =  this.getIntent();
                                    if (intent != null) {
                                        String bearToken = intent.getStringExtra("bearToken");
                                        int numberArgument = intent.getIntExtra("numberArgument", 0);
                                        result.success(bearToken + "|" + numberArgument);
                                    } else {
                                        result.error("NO_INTENT", "Intent is null", null);
                                    }
                                default:
                                    result.notImplemented();
                            }
                        }
                );
    }
}