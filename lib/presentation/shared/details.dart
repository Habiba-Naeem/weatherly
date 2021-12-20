import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

import '../../domain/weather/weather.dart';

class Details extends StatelessWidget {
  final WeatherService ws = WeatherService();

  Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
        future: ws.queryWeather(),
        builder: (context, snapshot) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailItem(
                  name: "Wind", value: snapshot.data!.windSpeed.toString()),
              SizedBox(
                width: 16,
              ),
              DetailItem(name: "Humidity", value: "13km/hr"),
              SizedBox(
                width: 16,
              ),
              DetailItem(name: "Chance of rain", value: "13km/hr"),
            ],
          );
        });
  }
}

class DetailItem extends StatelessWidget {
  String name;

  String value;
  DetailItem({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        Text(value),
      ],
    );
  }
}
