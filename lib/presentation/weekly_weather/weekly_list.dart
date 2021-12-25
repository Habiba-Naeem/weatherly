import 'package:flutter/material.dart';
import 'package:weatherlynew/domain/location/location.dart';
import 'package:weatherlynew/domain/weather/weather_service.dart';
import 'package:weather/weather.dart';

// class WeeklyList extends StatelessWidget {
//   WeeklyList({Key? key}) : super(key: key);
//   List<String> days = [
//     'Monday',
//     'Tuesday',
//     'Wednesday',
//     'Thursday',
//     'Friday',
//     'Saturday',
//     'Sunday'
//   ];
//   final WeatherService ws = WeatherService();
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Weather>>(
//         future: ws.queryForecast(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(snapshot.data![index].temperature.toString()),
//                     Text(snapshot.data![index].date.toString()),
//                     Text("+25"),
//                   ],
//                 );
//               },
//             );
//           } else {
//             return Text("Loading");
//           }
//         });
//   }
// }
