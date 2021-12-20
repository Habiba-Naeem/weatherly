import 'package:flutter/material.dart';

class WeeklyList extends StatelessWidget {
  WeeklyList({Key? key}) : super(key: key);
  List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: days.length,
      itemBuilder: (BuildContext context, int) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(days[int]),
            Text("Rainy"),
            Text("+25"),
          ],
        );
      },
    );
  }
}