// generated https://javiercbk.github.io/json_to_dart/
class RoadsterModel {
  String name;
  String launchDateUtc;
  int launchDateUnix;
  int launchMassKg;
  int launchMassLbs;
  int noradId;
  double epochJd;
  String orbitType;
  double apoapsisAu;
  double periapsisAu;
  double semiMajorAxisAu;
  double eccentricity;
  double inclination;
  double longitude;
  double periapsisArg;
  double periodDays;
  double speedKph;
  double speedMph;
  double earthDistanceKm;
  double earthDistanceMi;
  double marsDistanceKm;
  double marsDistanceMi;
  List<String> flickrImages;
  String wikipedia;
  String details;

  RoadsterModel(
      {this.name,
      this.launchDateUtc,
      this.launchDateUnix,
      this.launchMassKg,
      this.launchMassLbs,
      this.noradId,
      this.epochJd,
      this.orbitType,
      this.apoapsisAu,
      this.periapsisAu,
      this.semiMajorAxisAu,
      this.eccentricity,
      this.inclination,
      this.longitude,
      this.periapsisArg,
      this.periodDays,
      this.speedKph,
      this.speedMph,
      this.earthDistanceKm,
      this.earthDistanceMi,
      this.marsDistanceKm,
      this.marsDistanceMi,
      this.flickrImages,
      this.wikipedia,
      this.details});

  RoadsterModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    launchDateUtc = json['launch_date_utc'];
    launchDateUnix = json['launch_date_unix'];
    launchMassKg = json['launch_mass_kg'];
    launchMassLbs = json['launch_mass_lbs'];
    noradId = json['norad_id'];
    epochJd = json['epoch_jd'];
    orbitType = json['orbit_type'];
    apoapsisAu = json['apoapsis_au'];
    periapsisAu = json['periapsis_au'];
    semiMajorAxisAu = json['semi_major_axis_au'];
    eccentricity = json['eccentricity'];
    inclination = json['inclination'];
    longitude = json['longitude'];
    periapsisArg = json['periapsis_arg'];
    periodDays = json['period_days'];
    speedKph = json['speed_kph'];
    speedMph = json['speed_mph'];
    earthDistanceKm = json['earth_distance_km'];
    earthDistanceMi = json['earth_distance_mi'];
    marsDistanceKm = json['mars_distance_km'];
    marsDistanceMi = json['mars_distance_mi'];
    flickrImages = json['flickr_images'].cast<String>();
    wikipedia = json['wikipedia'];
    details = json['details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['launch_date_utc'] = this.launchDateUtc;
    data['launch_date_unix'] = this.launchDateUnix;
    data['launch_mass_kg'] = this.launchMassKg;
    data['launch_mass_lbs'] = this.launchMassLbs;
    data['norad_id'] = this.noradId;
    data['epoch_jd'] = this.epochJd;
    data['orbit_type'] = this.orbitType;
    data['apoapsis_au'] = this.apoapsisAu;
    data['periapsis_au'] = this.periapsisAu;
    data['semi_major_axis_au'] = this.semiMajorAxisAu;
    data['eccentricity'] = this.eccentricity;
    data['inclination'] = this.inclination;
    data['longitude'] = this.longitude;
    data['periapsis_arg'] = this.periapsisArg;
    data['period_days'] = this.periodDays;
    data['speed_kph'] = this.speedKph;
    data['speed_mph'] = this.speedMph;
    data['earth_distance_km'] = this.earthDistanceKm;
    data['earth_distance_mi'] = this.earthDistanceMi;
    data['mars_distance_km'] = this.marsDistanceKm;
    data['mars_distance_mi'] = this.marsDistanceMi;
    data['flickr_images'] = this.flickrImages;
    data['wikipedia'] = this.wikipedia;
    data['details'] = this.details;
    return data;
  }
}
