import 'dart:convert';

import 'package:weather/weather.dart';
import 'package:http/http.dart' as http;
import 'package:weatherlynew/domain/location/location.dart';
import 'package:weatherlynew/domain/weather/weather.dart';

class WeatherService {
  static const endPointUrl = 'https://api.openweathermap.org/data/2.5';
  static const apiKey = "aac4b6870f65fa527646b70cf4bb3b3e";

  Future<WeatherModel> queryWeather() async {
    const requestUrl =
        '$endPointUrl/onecall?lat=33.44&lon=-94.04&units=metric&exclude=minutely&appid=$apiKey';
    final response = await http.get(Uri.parse(requestUrl));

    Map<dynamic, dynamic> data =
        await jsonDecode(response.body) as Map<dynamic, dynamic>;
    print(data);

    List<Hourly> hourly = data['hourly'].map<Hourly>((item) {
      print("item: $item");
      return Hourly(
        time: DateTime.fromMillisecondsSinceEpoch(
          item['dt'] * 1000,
          isUtc: true,
        ),
        temp: item['temp'].toDouble(),
      );
    }).toList();
    print("hourly:$hourly");

    
    return WeatherModel(
        condition: data['current']['weather'][0]['main'],
        description: data['current']['weather'][0]['description'],
        temp: data['current']['temp'],
        feelLikeTemp: data['current']['feels_like'],
        humidity: data['current']['humidity'],
        windSpeed: data['current']['wind_speed'],
        date: DateTime.fromMillisecondsSinceEpoch(data['current']['dt'] * 1000,
            isUtc: true),
        hourly: hourly);
  }

  // Future<List<Weather>> queryForecast() async {
  //   List<Weather> forecasts = await wf.fiveDayForecastByCityName(cityName);
  //   List<WeatherModel> weekforecasts;
  //   final requestUrl =
  //       '$endPointUrl/onecall?lat=33.44&lon=-94.04&exclude=minutely,hourly&appid=$apiKey'; //'$endPointUrl/weather?q=$cityName&APPID=$apiKey';
  //   final response = await http.get(Uri.parse(requestUrl));
  //   Map<dynamic, dynamic> data =
  //       await jsonDecode(response.body) as Map<dynamic, dynamic>;
  //   print(response.body);

  //   try {
  //     //   weekforecasts =  data.map((key, value) {
  //     //     return await WeatherModel(
  //     //   condition: value['current']['weather'][0]
  //     //       ['main'], //wea.weatherMain.toString(),
  //     //   description: value['current']['weather'][0]
  //     //       ['description'], //weather.weatherDescription.toString(),
  //     //   temp: value['current']['temp'], //weather.temperature!.celsius!.toDouble(),
  //     //   feelLikeTemp: value['current']
  //     //       ['feels_like'], //weather.tempFeelsLike!.celsius!.toDouble(),
  //     //   chanceOfRain:value['current']
  //     //       ['feels_like'],,
  //     //   humidity: value['current']['humidity'], //weather.humidity!.toDouble(),
  //     //   windSpeed: value['current']['wind_speed'], //weather.windSpeed!.toDouble(),
  //     //   date: DateTime.fromMillisecondsSinceEpoch(weather.date!.day * 1000,
  //     //       isUtc: true),
  //     // )
  //     //   }).toList();
  //     return forecasts;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
