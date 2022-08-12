package com.example.mentalhealthappui

import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.logging.Handler

class MainActivity: FlutterActivity() {
    private val CHANNEL = "unique_name";
    private lateinit var channel: MethodChannel
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger,CHANNEL)
        channel.setMethodCallHandler { call, result ->
            if(call.method=="showtoast"){
                Toast.makeText(this,"hey",Toast.LENGTH_LONG).show()
            }
        }
    }
}
