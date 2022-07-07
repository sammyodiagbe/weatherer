// ignore_for_file:  prefer_const_constructors

import "package:flutter/material.dart";

class Weatherer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/rainy_weather.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
