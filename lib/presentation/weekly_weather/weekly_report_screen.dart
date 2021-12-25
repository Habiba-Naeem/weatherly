import 'package:flutter/material.dart';
import 'package:weatherlynew/presentation/daily_weather/today_weather_screen.dart';
import 'package:weatherlynew/presentation/weekly_weather/weekly_list.dart';

import 'nextday_weather_widget.dart';

class WeeklyReport extends StatelessWidget {
  static const String id = 'Weekly Report Screen';
  WeeklyReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const NextDayWeatherWidget(),
            // Expanded(
            //   child: WeeklyList(),
            // ),
            InkWell(
              child: Text("Today's"),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(TodayWeatherScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
