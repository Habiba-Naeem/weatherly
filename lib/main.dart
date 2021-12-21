import 'package:flutter/material.dart';
import 'package:weatherlynew/presentation/daily_weather/today_weather_screen.dart';
import 'package:weatherlynew/presentation/weekly_weather/weekly_report_screen.dart';

void main() {
  print("Wherasdras");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WeeklyReport() //TodayWeatherScreen(),
    );
  }
}
