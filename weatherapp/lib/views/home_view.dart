import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/getWeatherCubit/getWeatherCubit.dart';
import 'package:weatherapp/cubits/getWeatherCubit/getWeatherStates.dart';
import 'package:weatherapp/widgets/noWeatherBody.dart';
import 'package:weatherapp/widgets/weatherBody.dart';

import 'searchView.dart';

class HomeView extends StatelessWidget {
  // const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 100,
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchView();
              }));
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        title: Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: BlocBuilder<GetWeatherCubit, getWeatherStates>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherBody(); // You were missing the return statement here
          } else {
            return Center(
              child: Text('There is an error'),
            );
          }
        },
      ),
    );
  }
}
