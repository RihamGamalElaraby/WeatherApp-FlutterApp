class getWeatherStates {}

class NoWeatherState extends getWeatherStates {}

class WeatherLoadedState extends getWeatherStates {
  // final WeatherModel model;
  // WeatherLoadedState(this.model);
}

class WeatherFailureState extends getWeatherStates {
  final String errMessage;
  WeatherFailureState(this.errMessage);
}
