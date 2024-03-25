import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a city', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Text('Search here'),
      ),
    );
  }
}
