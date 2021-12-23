import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
  final int humidity;
  final double chanceOfRain;
  final DateTime date;
  //final Function fromDailyJson;
  WeatherModel({
    required this.condition,
    required this.description,
    required this.temp,
    required this.feelLikeTemp,
    required this.date,
    required this.windSpeed,
    required this.humidity,
    required this.chanceOfRain,
    //required this.fromDailyJson,
  });
}

fromDailyJson(dynamic data) {
  return WeatherModel(
      condition: data['weather'][0]['main'].toString(),
      description: data['weather']['description'],
      temp: data['main']['temp'].toDouble(),
      date: DateTime.fromMillisecondsSinceEpoch(data['dt'] * 1000, isUtc: true),
      feelLikeTemp: data['main']['feels_like'].toDouble(),
      chanceOfRain: data['main']['feels_like'].toDouble(),
      humidity: data['main']['humidity'].toDouble(),
      windSpeed: data['wind']['speed'].toDouble());
}
