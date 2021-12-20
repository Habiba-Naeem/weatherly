import 'package:flutter/material.dart';

class NextDayWeatherWidget extends StatelessWidget {
  const NextDayWeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "21 C",
          style: TextStyle(fontSize: 60),
        ),
        //Details(),
      ],
    );
  }
}
