import 'package:flutter/material.dart';
import 'package:weatherlynew/domain/weather/weather.dart';
import 'package:weatherlynew/domain/weather/weather_service.dart';
import 'package:weatherlynew/presentation/shared/theme.dart';
import 'package:weatherlynew/presentation/weekly_weather/weekly_report_screen.dart';
import 'hourly_update_list.dart';
import 'today_weather_widget.dart';
import 'package:provider/provider.dart';

class TodayWeatherScreen extends StatelessWidget {
  static const String id = 'Today Weather Screen';
  final WeatherService ws = WeatherService();

  TodayWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureProvider<WeatherModel>(
      initialData: WeatherModel(
        condition: "",
        date: DateTime.now(),
        description: '',
        feelLikeTemp: 0,
        humidity: 0,
        temp: 0,
        windSpeed: 0,
        hourly:[],
      ),
      create: (context) => WeatherService().queryWeather(),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TodayWeatherWidget(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Today"),
                        TextButton(
                          onPressed: () {},
                          child: InkWell(
                            child: const Text("7 days"),
                            onTap: () {
                              //Navigator.of(context).pushReplacementNamed(WeeklyReport.id);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                   HourlyUpdateList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//TODO hourly weather list