
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherlynew/domain/weather/weather.dart';
import 'package:provider/provider.dart';
class HourlyUpdateList extends StatelessWidget {
   HourlyUpdateList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weather = Provider.of<WeatherModel>(context);
    return ListView.builder(
        itemCount: weather.hourly.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int) {
          return Expanded(
            child: Column(
              children:  [
                Text(weather.hourly[int].time.toString()),
                Text(weather.hourly[int].temp.toString()),
              ],
            ),
          );
        });
  }
}
