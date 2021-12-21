import 'package:flutter/material.dart';
import 'hourly_update_list.dart';
import 'today_weather_widget.dart';

class TodayWeatherScreen extends StatelessWidget {
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