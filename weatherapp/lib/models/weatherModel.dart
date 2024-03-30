class WeatherModel {
  DateTime date;
  String cityName;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;
  String icon;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.icon,
      required this.weatherStateName});

  factory WeatherModel.fromJson(dynamic data) {
    var forecastData = data['forecast']['forecastday'][0];
    var currentData = data['current'];

    return WeatherModel(
        cityName: data['location']['name'],
        date: DateTime.parse(currentData['last_updated']),
        temp: forecastData['day']['avgtemp_c'],
        maxTemp: forecastData['day']['maxtemp_c'],
        minTemp: forecastData['day']['mintemp_c'],
        weatherStateName: forecastData['day']['condition']['text'],
        icon: currentData['condition']['icon']);
  }
}
