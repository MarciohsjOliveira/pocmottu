package com.mottu_poc

import io.flutter.plugins.GeneratedPluginRegistrant
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

//Constants variable
private const val POC_CHANNEL = "POC"
private const val CHANNEL_COMMUNICATOR = "br.com.mottu.poc/channel-flutter"

class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        //Registes flutter engine
        GeneratedPluginRegistrant.registerWith(FlutterEngine(this))

        //Method channel communicator between platform android/iOS
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL_COMMUNICATOR).setMethodCallHandler { methodCall, result ->
            if (methodCall.method == POC_CHANNEL) {
                val message = context.getString(R.string.mottu_text_click)
                result.success(message)
            }
        }
    }
}
