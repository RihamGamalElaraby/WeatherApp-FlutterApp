import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/noWeatherBody.dart';

import 'searchView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 100,
        backgroundColor: Colors.blue,
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
      body: NoWeatherBody(),
    );
  }
}
