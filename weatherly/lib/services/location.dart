import 'package:geolocator/geolocator.dart';

class Location {
  late double longitude, latitude;

  Future getCurrentLocation() async {
    // Request permission to use device's location
    await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      longitude = position.longitude;
      latitude = position.latitude;
      print(longitude);
      print(latitude);
    } catch (exeption) {
      // Catch exeption;
    }
  }
}
