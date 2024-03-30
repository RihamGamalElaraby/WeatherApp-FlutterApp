import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/getWeatherCubit/getWeatherCubit.dart';
import 'package:weatherapp/main.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var model = BlocProvider.of<GetWeatherCubit>(context).model;
    model!.icon.contains('https');
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          getThemeColor(model.weatherStateName),
          getThemeColor(model.weatherStateName)[300]!,
          getThemeColor(model.weatherStateName)[200]!,
          getThemeColor(model.weatherStateName)[50]!,
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              model.cityName,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Updated at ${model.date.hour}:${model.date.minute}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https:${model.icon}"),
                Text(
                  '${model.temp.round()}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp: ${model.maxTemp.round()}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Mintemp: ${model.minTemp.round()}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Text(
              model.weatherStateName,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// DateTime stringtoDateTime(String value) {
//   return DateTime.parse(value);
// }
