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
            // Container(
            //   color: Colors.red,
            //   height: 20,
            //   width: double.infinity,
            // ),
            // our bottom custom container
            Positioned(
              bottom: 50,
              child: ClipPath(
                clipper: BottomClipper(),
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Colors.white,
                  ),
                  height: 200,
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

    // close the path
    path.close();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
