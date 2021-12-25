import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// enum WeatherCondition {
//   mainCondition,
//   windSpeed,
//   humidity,
// }

class Hourly {
  final DateTime time;
  final double temp;

  Hourly({required this.time, required this.temp});
}

class WeatherModel {
  final String condition;
  final String description;
  final double temp;
  final double feelLikeTemp;
  final double windSpeed;
  final int humidity;
  final DateTime date;
  final List<Hourly> hourly;
  
  WeatherModel({
    required this.condition,
    required this.description,
    required this.temp,
    required this.feelLikeTemp,
    required this.date,
    required this.windSpeed,
    required this.humidity,
    required this.hourly,
    // required this.chanceOfRain,
  });
}
