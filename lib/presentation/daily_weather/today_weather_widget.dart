import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weatherlynew/domain/weather/weather.dart';
import '../shared/details.dart';

class TodayWeatherWidget extends StatelessWidget {
  TodayWeatherWidget({Key? key}) : super(key: key);
  final WeatherService ws = WeatherService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Weather>(
        future: ws.queryWeather(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.data != null) {
            return Column(
              children: [
                //Icon(icon: snapshot.data.weatherIcon),
                Text(
                  snapshot.data!.areaName.toString(),
                ),
                Text(
                  snapshot.data!.temperature!.celsius!.toStringAsFixed(1),
                  style: TextStyle(fontSize: 60),
                ),
                Text(
                  snapshot.data!.weatherDescription.toString(),
                ),
                Details(),
              ],
            );
          } else {
            return Text("loading");
          }
        });
  }
}
