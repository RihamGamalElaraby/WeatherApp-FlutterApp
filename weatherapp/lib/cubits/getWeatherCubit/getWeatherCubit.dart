import 'package:bloc/bloc.dart';
import 'package:weatherapp/cubits/getWeatherCubit/getWeatherStates.dart';
import 'package:weatherapp/models/weatherModel.dart';
import 'package:weatherapp/services/weatherServices.dart';

class GetWeatherCubit extends Cubit<getWeatherStates> {
  GetWeatherCubit() : super(NoWeatherState());

  getCurrentWeather({required String city}) async {
    try {
      WeatherModel wathermodel =
          await WeatherService().getWeather(cityName: city);
      emit(WeatherLoadedState());
    } on Exception catch (e) {
      print(e.toString());
      emit(WeatherFailureState());
    }
  }
}
