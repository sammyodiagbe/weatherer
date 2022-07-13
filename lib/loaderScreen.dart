// ignore_for_file:  prefer_const_constructors

import 'dart:convert';

import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";
import 'package:weather_app/models/weatherBrain.dart';
import 'package:weather_app/weatherer.dart';

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

  void getWeatherData() async {
    var res = await WeatherBrain.getLocation();
    var rawData = jsonDecode(res);

    print(rawData['main']);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Weatherer(
              description: rawData['weather'][0]['description'],
              temp: rawData['main']['temp']),
        ));
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
