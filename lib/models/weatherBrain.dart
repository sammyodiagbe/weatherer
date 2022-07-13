// class WeatherBrain {
//   final Location _location;
// }
import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import "package:http/http.dart" as http;

class WeatherBrain {
  // so we want to be able to get the users location

  static Future<String> getLocation() async {
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      var lat = position.latitude;
      var lng = position.longitude;

      http.Response data = await http.get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lng&appid=6b4d6bf1d14e0e6bb054831096faa178'));

      if (data.statusCode == 200) {
        return data.body;
      }
    } catch (error) {
      print('error found');
      print(error);
    }
    return 'Not found';
  }
}
