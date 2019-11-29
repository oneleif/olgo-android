package com.pv.jade

import com.github.kittinunf.fuel.httpGet
import com.github.kittinunf.result.Result
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

class ApiStuff {

    companion object {
        private const val endpoint = "https://api.spacexdata.com/v3/"
    }

    suspend fun roadster(): String = withContext(Dispatchers.Default) {

        val roadster = endpoint + "roadster"

        val (_, _, result) = roadster.httpGet().responseString()

        when (result) {
            is Result.Success -> {
                result.get()
            }
            is Result.Failure -> {
                "Error"
            }
        }
    }
}
