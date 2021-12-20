import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HourlyUpdateList extends StatelessWidget {
  const HourlyUpdateList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int) {
          return Column(
            children: const [
              Text("12:00"),
              Text("Cloudy"),
            ],
          );
        });
  }
}
