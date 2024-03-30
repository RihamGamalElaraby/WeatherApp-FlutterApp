import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/getWeatherCubit/getWeatherCubit.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var model = BlocProvider.of<GetWeatherCubit>(context).model;
    model!.icon.contains('https');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model!.cityName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Updated at ${model.date.hour}:${model.date.minute}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https:${model.icon}"),
              Text(
                '${model.temp}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp: ${model.maxTemp.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Mintemp: ${model.minTemp.round()}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          Text(
            model.weatherStateName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// DateTime stringtoDateTime(String value) {
//   return DateTime.parse(value);
// }
