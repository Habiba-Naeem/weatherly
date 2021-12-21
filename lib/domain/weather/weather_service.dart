import 'package:weather/weather.dart';
import 'package:weatherlynew/domain/weather/weather.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  WeatherFactory wf = WeatherFactory('aac4b6870f65fa527646b70cf4bb3b3e');
  String cityName = 'Karachi';

  Future<Weather> queryWeather() async {
    Weather weather = await wf.currentWeatherByCityName(cityName);

    print(weather);
    try {
      return weather;
      //Map<String, dynamic> data = weather as Map<String, dynamic>;
      // return WeatherModel(
      //   condition: weather.weatherMain.toString(),
      //   description: weather.weatherDescription.toString(),
      //   temp: weather.temperature!.celsius!.toDouble(),
      //   feelLikeTemp: weather.tempFeelsLike!.celsius!.toDouble(),
      //   chanceOfRain: weather.rainLastHour!.toDouble(),
      //   humidity: weather.humidity!.toDouble(),
      //   windSpeed: weather.windSpeed!.toDouble(),
      //   date: DateTime.fromMillisecondsSinceEpoch(weather.date!.day * 1000,
      //       isUtc: true),
      // );
    } catch (e) {
      rethrow;
    }
  }

  // static const endPointUrl = 'https://api.openweathermap.org/data/2.5';
  // static const apiKey = "<insert api_id here>";
  // http.Client httpClient;

  // WeatherService({this.httpClient =  http.Client()});

  // Future<WeatherModel> fromDailyJson() {
  //   Map<String, dynamic> data = daily.data()! as Map<String, dynamic>;
  //   return WeatherModel(
  //     condition: data['weather'][0]['main'],
  //     description: data['weather'][0]['description'],
  //     temp: data['temp']['day'].toDouble(),
  //     feelLikeTemp: data['feels_like']['day'].toDouble(),
  //     date: DateTime.fromMillisecondsSinceEpoch(data['dt'] * 1000, isUtc: true),
  //   );
  // }

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
