class WeatherModel {
  final String? cityname;
  final String? date;
  final String? image;
  final double? temp;
  final double? maxTemp;
  final double? minTemp;
  final String? weatherCondition;

  WeatherModel({
    this.cityname,
    this.date,
    this.image,
    this.maxTemp,
    this.minTemp,
    this.temp,
    this.weatherCondition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityname: json["Location"]["name"],
      date: json["current"]["last_updated"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
      temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      weatherCondition: json["forecast"]["forecastday"][0]["day"]["condition"]
          ["text"],
    );
  }
}
