import 'package:flutter/material.dart';
import 'package:weatherlynew/presentation/daily_weather/today_weather_screen.dart';

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
      home: TodayWeatherScreen(),
    );
  }
}
