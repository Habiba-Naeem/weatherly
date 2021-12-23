import 'dart:convert';

import 'package:weather/weather.dart';
import 'package:http/http.dart' as http;
import 'package:weatherlynew/domain/weather/weather.dart';

class WeatherService {
  WeatherFactory wf = WeatherFactory('aac4b6870f65fa527646b70cf4bb3b3e');
  String cityName = 'Karachi';
  static const endPointUrl = 'https://api.openweathermap.org/data/2.5';
  static const apiKey = "aac4b6870f65fa527646b70cf4bb3b3e";


  Future<WeatherModel> queryWeather() async {
    Weather weather = await wf.currentWeatherByCityName(cityName);
    final requestUrl = '$endPointUrl/weather?q=$cityName&APPID=$apiKey';
    final response = await http.get(Uri.parse(requestUrl));

    Map<dynamic, dynamic> data =
        await jsonDecode(response.body) as Map<dynamic, dynamic>;
    print(data);

    //return weather;
    return await WeatherModel(
      condition: data['weather'][0]['main'], //wea.weatherMain.toString(),
      description: data['weather'][0]
          ['description'], //weather.weatherDescription.toString(),
      temp: data['main']['temp'], //weather.temperature!.celsius!.toDouble(),
      feelLikeTemp: data['main']
          ['feels_like'], //weather.tempFeelsLike!.celsius!.toDouble(),
      chanceOfRain: weather.tempFeelsLike!.celsius!.toDouble(),
      humidity: data['main']['humidity'], //weather.humidity!.toDouble(),
      windSpeed: data['wind']['speed'], //weather.windSpeed!.toDouble(),
      date: DateTime.fromMillisecondsSinceEpoch(weather.date!.day * 1000,
          isUtc: true),
    );
  }

  Future<List<Weather>> queryForecast() async {
    List<Weather> forecasts = await wf.fiveDayForecastByCityName(cityName);
    print(forecasts);

    try {
      return forecasts;
    } catch (e) {
      rethrow;
    }
  }
}
