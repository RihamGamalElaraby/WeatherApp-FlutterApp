import 'package:bloc/bloc.dart';
import 'package:weatherapp/cubits/getWeatherCubit/getWeatherStates.dart';
import 'package:weatherapp/models/weatherModel.dart';
import 'package:weatherapp/services/weatherServices.dart';

class GetWeatherCubit extends Cubit<getWeatherStates> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? model; // Making it nullable to handle initialization

  getCurrentWeather({required String city}) async {
    try {
      model = await WeatherService().getWeather(cityName: city);
      emit(WeatherLoadedState());
    } on Exception catch (e) {
      emit(
        WeatherFailureState(
          e.toString(),
        ),
      );
    }
  }
}
