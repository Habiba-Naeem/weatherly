import 'package:flutter/foundation.dart';

// enum WeatherCondition {
//   mainCondition,
//   windSpeed,
//   humidity,
// }

class WeatherModel {
  final String condition;
  final String description;
  final double temp;
  final double feelLikeTemp;
  final double windSpeed;
  final double humidity;
  final double chanceOfRain;
  final DateTime date;

  WeatherModel({
    required this.condition,
    required this.description,
    required this.temp,
    required this.feelLikeTemp,
    required this.date,
    required this.windSpeed,
    required this.humidity,
    required this.chanceOfRain,
  });
}
