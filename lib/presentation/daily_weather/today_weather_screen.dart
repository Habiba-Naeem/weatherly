import 'package:flutter/material.dart';
import 'package:weatherlynew/presentation/weekly_weather/weekly_report_screen.dart';
import 'hourly_update_list.dart';
import 'today_weather_widget.dart';

class TodayWeatherScreen extends StatelessWidget {
  static const String id = 'Today Weather Screen';
  TodayWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TodayWeatherWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Today"),
                TextButton(
                  onPressed: () {},
                  child: InkWell(
                    child: const Text("7 days"),
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed(WeeklyReport.id);
                    },
                    ),
                )
              ],
            ),
            //const HourlyUpdateList()
          ],
        ),
      ),
    );
  }
}
//TODO hourly weather list