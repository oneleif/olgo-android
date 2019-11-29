package com.pv.jade

import android.os.Bundle
import android.util.Log

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import kotlinx.coroutines.runBlocking

class MainActivity : FlutterActivity() {

    val apiStuff = ApiStuff()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)

        MethodChannel(flutterView, "flutter/test").setMethodCallHandler { call, result ->

            Log.d("pv", "Here we were called")

            when (call.method) {
                "getTest" -> {
                    result.success("Called getTest")
                }
                "getRoadster" -> {
                    runBlocking {
                        result.success(apiStuff.roadster())
                    }
                }
            }
        }
    }
}
