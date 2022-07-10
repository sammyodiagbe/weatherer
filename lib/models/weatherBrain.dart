// class WeatherBrain {
//   final Location _location;
// }
import 'package:geolocator/geolocator.dart';

class WeatherBrain {
  // so we want to be able to get the users location

  static void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch (error) {
      print(error);
    }
  }
}
