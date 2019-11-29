package com.pv.jade

import android.os.Bundle
import android.util.Log

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking

class MainActivity : FlutterActivity() {

    val apiStuff = ApiStuff()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)

        MethodChannel(flutterView, "flutter/test").setMethodCallHandler { call, result ->
            
            when (call.method) {
                "getTest" -> {
                    result.success("Called getTest")
                }
                "getRoadster" -> {
                    GlobalScope.launch(Dispatchers.Main) {
                        result.success(apiStuff.roadster())
                    }
                }
            }
        }
    }
}
