class PrevisaoCidade {
  String by;
  bool validKey;
  Results results;
  double executionTime;
  bool fromCache;

  PrevisaoCidade(
      {this.by,
      this.validKey,
      this.results,
      this.executionTime,
      this.fromCache});

  PrevisaoCidade.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    validKey = json['valid_key'];
    results =
        json['results'] != null ? new Results.fromJson(json['results']) : null;
    executionTime = json['execution_time'];
    fromCache = json['from_cache'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['by'] = this.by;
    data['valid_key'] = this.validKey;
    if (this.results != null) {
      data['results'] = this.results.toJson();
    }
    data['execution_time'] = this.executionTime;
    data['from_cache'] = this.fromCache;
    return data;
  }
}

class Results {
  int temp;
  String date;
  String time;
  String conditionCode;
  String description;
  String currently;
  String cid;
  String city;
  String imgId;
  int humidity;
  String windSpeedy;
  String sunrise;
  String sunset;
  String conditionSlug;
  String cityName;
  List<Forecast> forecast;

  Results(
      {this.temp,
      this.date,
      this.time,
      this.conditionCode,
      this.description,
      this.currently,
      this.cid,
      this.city,
      this.imgId,
      this.humidity,
      this.windSpeedy,
      this.sunrise,
      this.sunset,
      this.conditionSlug,
      this.cityName,
      this.forecast});

  Results.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    date = json['date'];
    time = json['time'];
    conditionCode = json['condition_code'];
    description = json['description'];
    currently = json['currently'];
    cid = json['cid'];
    city = json['city'];
    imgId = json['img_id'];
    humidity = json['humidity'];
    windSpeedy = json['wind_speedy'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    conditionSlug = json['condition_slug'];
    cityName = json['city_name'];
    if (json['forecast'] != null) {
      forecast = new List<Forecast>();
      json['forecast'].forEach((v) {
        forecast.add(new Forecast.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['date'] = this.date;
    data['time'] = this.time;
    data['condition_code'] = this.conditionCode;
    data['description'] = this.description;
    data['currently'] = this.currently;
    data['cid'] = this.cid;
    data['city'] = this.city;
    data['img_id'] = this.imgId;
    data['humidity'] = this.humidity;
    data['wind_speedy'] = this.windSpeedy;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['condition_slug'] = this.conditionSlug;
    data['city_name'] = this.cityName;
    if (this.forecast != null) {
      data['forecast'] = this.forecast.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Forecast {
  String date;
  String weekday;
  int max;
  int min;
  String description;
  String condition;

  Forecast(
      {this.date,
      this.weekday,
      this.max,
      this.min,
      this.description,
      this.condition});

  Forecast.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    weekday = json['weekday'];
    max = json['max'];
    min = json['min'];
    description = json['description'];
    condition = json['condition'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['weekday'] = this.weekday;
    data['max'] = this.max;
    data['min'] = this.min;
    data['description'] = this.description;
    data['condition'] = this.condition;
    return data;
  }
}
