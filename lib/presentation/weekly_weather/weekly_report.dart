import 'package:flutter/material.dart';
import 'package:weatherlynew/presentation/weekly_weather/weekly_list.dart';

import 'nextday_weather_widget.dart';

class WeeklyReport extends StatelessWidget {
  WeeklyReport({Key? key, required wf}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const NextDayWeatherWidget(),
            Expanded(
              child: WeeklyList(),
            )
          ],
        ),
      ),
    );
  }
}
