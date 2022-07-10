// ignore_for_file:  prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_spinkit/flutter_spinkit.dart";

class SpinnerScreen extends StatelessWidget {
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
