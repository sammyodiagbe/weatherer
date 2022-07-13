// ignore_for_file:  prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";
import 'package:weather_app/models/weatherBrain.dart';

class SpinnerScreen extends StatefulWidget {
  @override
  State<SpinnerScreen> createState() => _SpinnerScreenState();
}

class _SpinnerScreenState extends State<SpinnerScreen> {
  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  void getWeatherData() {
    var res = WeatherBrain.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hold your horses..'.toUpperCase(),
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 15),
            SpinKitWave(
              color: Colors.white,
              size: 70,
            ),
          ],
        ),
      ),
    );
  }
}
