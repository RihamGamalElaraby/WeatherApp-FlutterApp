import 'package:flutter/material.dart';

class WheatherBody extends StatelessWidget {
  const WheatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Alexandira',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Updated at 23:46',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/cloudy.png'),
              Text(
                '17',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp: 24',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Mintemp: 16',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          Text(
            'Light Rain',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
