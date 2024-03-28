import 'package:dio/dio.dart';
import 'package:weatherapp/models/weatherModel.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '15b5c0c284714eb6abe31525242703';

  WeatherService(this.dio);
  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on Exception catch (e) {
      return null;
    }
  }
}
