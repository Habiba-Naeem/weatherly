import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:weatherlynew/domain/location/location.dart';
import 'package:weatherlynew/domain/weather/weather.dart';
import 'package:weatherlynew/domain/weather/weather_service.dart';


final List<Location> locations = [
  Location(city: "Karachi"),
  Location(city: "Islamabad"),
  Location(city: "Lahore"),
  Location(city: "Hyderabad"),
];

class TodayWeatherWidget extends StatelessWidget {
  final WeatherService ws = WeatherService();
  int selectedIndex = 0;

  TodayWeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
        future: ws.queryWeather(),
        builder: (BuildContext context, snapshot) {
          print(snapshot);

          if (snapshot.hasData) {
            return Column(
              children: [
                Text(
                  snapshot.data!.temp.toString() + "\u2103",
                  style: TextStyle(fontSize: 60),
                ),
                Wrap(
                  children: [
                    Text(
                      snapshot.data!.condition.toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
                Text(
                  snapshot.data!.description.toString(),
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  snapshot.data!.date.toString(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DetailItem(
                        name: "Wind",
                        value: snapshot.data!.windSpeed.toString()),
                    SizedBox(
                      width: 16,
                    ),
                    DetailItem(
                        name: "Humidity",
                        value: snapshot.data!.humidity.toString()),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                )
              ],
            );
          } else {
            return Text("Loading");
          }
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
