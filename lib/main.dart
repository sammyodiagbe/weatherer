import 'package:flutter/material.dart';
import 'package:weather_app/weatherer.dart';

void main() {
  runApp(WeathererApp());
}

class WeathererApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Weatherer(),
    );
  }
}
