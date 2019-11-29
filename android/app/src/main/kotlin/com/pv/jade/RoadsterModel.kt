package com.pv.jade


import com.beust.klaxon.*

private val klaxon = Klaxon()

data class Welcome(
    val name: String,

    @Json(name = "launch_date_utc")
    val launchDateUTC: String,

    @Json(name = "launch_date_unix")
    val launchDateUnix: Long,

    @Json(name = "launch_mass_kg")
    val launchMassKg: Long,

    @Json(name = "launch_mass_lbs")
    val launchMassLbs: Long,

    @Json(name = "norad_id")
    val noradID: Long,

    @Json(name = "epoch_jd")
    val epochJd: Double,

    @Json(name = "orbit_type")
    val orbitType: String,

    @Json(name = "apoapsis_au")
    val apoapsisAu: Double,

    @Json(name = "periapsis_au")
    val periapsisAu: Double,

    @Json(name = "semi_major_axis_au")
    val semiMajorAxisAu: Double,

    val eccentricity: Double,
    val inclination: Double,
    val longitude: Double,

    @Json(name = "periapsis_arg")
    val periapsisArg: Double,

    @Json(name = "period_days")
    val periodDays: Double,

    @Json(name = "speed_kph")
    val speedKph: Double,

    @Json(name = "speed_mph")
    val speedMph: Double,

    @Json(name = "earth_distance_km")
    val earthDistanceKM: Double,

    @Json(name = "earth_distance_mi")
    val earthDistanceMi: Double,

    @Json(name = "mars_distance_km")
    val marsDistanceKM: Double,

    @Json(name = "mars_distance_mi")
    val marsDistanceMi: Double,

    @Json(name = "flickr_images")
    val flickrImages: List<String>,

    val wikipedia: String,
    val details: String
) {
    
    fun toJson() = klaxon.toJsonString(this)

    companion object {
        fun fromJson(json: String) = klaxon.parse<Welcome>(json)
    }
}
