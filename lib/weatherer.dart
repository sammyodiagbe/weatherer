// ignore_for_file:  prefer_const_constructors

import "package:flutter/material.dart";

class Weatherer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sunny_weather.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Stack(
          children: [
            // our bottom custom container
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(30),
                    //   topRight: Radius.circular(30),
                    // ),
                    color: Colors.white,
                  ),
                  height: 250,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    var height = size.height;
    var width = size.width;

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
