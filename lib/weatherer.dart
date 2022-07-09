// ignore_for_file:  prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:weather_app/constants.dart';

class Weatherer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '24',
                        style: weatherStyle,
                      ),
                      Text(
                        'Expect light rain'.toUpperCase(),
                        style: expectStyle,
                      ),
                    ],
                  ),
                ),
              ),
              // our bottom custom container
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 15),

                  padding: EdgeInsets.all(20),
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Search by location name.',
                        style: labelTextStyle,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter search here',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // buttonn and current_location
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(12)),
                                onPressed: () {},
                                child: Text('Search'),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              color: Colors.purple,
                              onPressed: () {},
                              icon: Icon(Icons.home),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
