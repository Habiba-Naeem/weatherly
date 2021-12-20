import 'package:weather/weather.dart';

class WeatherService {
  WeatherFactory wf = WeatherFactory('aac4b6870f65fa527646b70cf4bb3b3e');
  String cityName = 'Karachi';

  Future<Weather> queryWeather() async {
    Weather weather = await wf.currentWeatherByCityName(cityName);
    print(weather);
    try {
      return weather;
    } catch (e) {
      rethrow;
    }
  }
}
