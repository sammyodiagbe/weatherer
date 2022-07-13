// ignore_for_file:  prefer_const_constructors

import 'dart:collection';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:weather_app/constants.dart';

class Weatherer extends StatelessWidget {
  String description;
  double temp;
  String? icon;

  Weatherer({required this.description, required this.temp, this.icon});
  @override
  Widget build(BuildContext context) {
    // print(int.parse('0x${icon}'));
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/rainy_weather.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.2,
                child: Container(
                  width: screenWidth,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          (temp - 273.15).toStringAsFixed(1),
                          style: weatherStyle,
                        ),
                        SizedBox(height: 10),
                        // Icon(IconData(int.parse('0x${icon}'))),
                        Text(
                          description.toUpperCase(),
                          style: expectStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // our bottom custom container
            ],
          ),
        ),
      ),
    );
  }
}

// class BottomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     var path = Path();
//     var height = size.height;
//     var width = size.width;

//     final double _xScaling = size.width / 414;
//     final double _yScaling = size.height / 896;
//     path.lineTo(56 * _xScaling, 7 * _yScaling);
//     path.cubicTo(
//       27.2 * _xScaling,
//       -4.2 * _yScaling,
//       6.66667 * _xScaling,
//       2.33333 * _yScaling,
//       0 * _xScaling,
//       7 * _yScaling,
//     );
//     path.cubicTo(
//       0 * _xScaling,
//       7 * _yScaling,
//       0 * _xScaling,
//       224 * _yScaling,
//       0 * _xScaling,
//       224 * _yScaling,
//     );
//     path.cubicTo(
//       0 * _xScaling,
//       224 * _yScaling,
//       253 * _xScaling,
//       224 * _yScaling,
//       253 * _xScaling,
//       224 * _yScaling,
//     );
//     path.cubicTo(
//       253 * _xScaling,
//       224 * _yScaling,
//       253 * _xScaling,
//       7 * _yScaling,
//       253 * _xScaling,
//       7 * _yScaling,
//     );
//     path.cubicTo(
//       230 * _xScaling,
//       -4 * _yScaling,
//       211 * _xScaling,
//       7 * _yScaling,
//       193 * _xScaling,
//       18 * _yScaling,
//     );
//     path.cubicTo(
//       175 * _xScaling,
//       29 * _yScaling,
//       92 * _xScaling,
//       21 * _yScaling,
//       56 * _xScaling,
//       7 * _yScaling,
//     );
//     path.cubicTo(
//       56 * _xScaling,
//       7 * _yScaling,
//       56 * _xScaling,
//       7 * _yScaling,
//       56 * _xScaling,
//       7 * _yScaling,
//     );

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
// }
