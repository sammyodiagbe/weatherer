// class WeatherBrain {
//   final Location _location;
// }
import 'package:geolocator/geolocator.dart';
import "package:http/http.dart" as http;

class WeatherBrain {
  // so we want to be able to get the users location

  static void getLocation() async {
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      var lat = position.latitude;
      var lng = position.longitude;
      http.Response data = await http.get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon={$lng}&appid=6b4d6bf1d14e0e6bb054831096faa178'));

      print(data.statusCode);
    } catch (error) {
      print(error);
    }
  }
}
