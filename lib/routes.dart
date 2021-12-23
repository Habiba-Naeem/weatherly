import 'package:flutter/material.dart';
import 'package:weatherlynew/main.dart';
import 'package:weatherlynew/presentation/daily_weather/today_weather_screen.dart';
import 'package:weatherlynew/presentation/weekly_weather/weekly_report_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyApp.id:
        return MaterialPageRoute(builder: (_) => const MyApp());
      case TodayWeatherScreen.id:
        return MaterialPageRoute(builder: (_) =>  TodayWeatherScreen());
      case WeeklyReport.id:
        return MaterialPageRoute(builder: (_) =>  WeeklyReport());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Could not find the route.')),
      );
    });
  }
}