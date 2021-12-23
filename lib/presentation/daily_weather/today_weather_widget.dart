import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weatherlynew/domain/weather/weather.dart';
import 'package:weatherlynew/domain/weather/weather_service.dart';
import '../shared/details.dart';

class TodayWeatherWidget extends StatelessWidget {
  TodayWeatherWidget({Key? key}) : super(key: key);
  final WeatherService ws = WeatherService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
        future: ws.queryWeather(),
        builder: (BuildContext context, snapshot) {
          print(snapshot);

          if (snapshot.hasData) {
            return Column(
              children: [
                //Icon(icon: snapshot.data.weatherIcon),
                Text(snapshot.data!.condition.toString()

                    //snapshot.data!.cloudiness.toString(),
                    ),
                Text(
                  snapshot.data!.temp.toString(),
                  style: TextStyle(fontSize: 60),
                ),
                Text(
                  snapshot.data!.description.toString(),
                ),
                Details(),
              ],
            );
          } else {
            return Text("Loading");
          }
        });
  }
}
