import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:weather_app/api/fetch_weather.dart';
import 'package:weather_app/data/model/weather_data.dart';

class GlobalController extends GetxController {
  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;
  final weatherData = WeatherData().obs;

  RxBool checkLoading() => _isLoading;
  RxDouble getLatitude() => _latitude;
  RxDouble getLongitude() => _longitude;

  WeatherData? get weather => weatherData.value;



  @override
  void onInit() {
    super.onInit();
    getLocation();
  }

  Future<void> getLocation() async {

    try {
      bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!isServiceEnabled) {
        throw Exception("Location services are disabled.");
      }

      LocationPermission locationPermission = await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.deniedForever) {
        throw Exception("Location permissions are permanently denied.");
      } else if (locationPermission == LocationPermission.denied) {
        locationPermission = await Geolocator.requestPermission();
        if (locationPermission == LocationPermission.denied) {
          throw Exception("Location permissions are denied.");
        }
      }

      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      _latitude.value = position.latitude;
      _longitude.value = position.longitude;


      var data = await FetchWeatherApi().processData(_latitude.value, _longitude.value);

      print(data);
      weatherData.value = data;

        } catch (e) {
      print('Error occurred while getting location or weather data: $e');
      _isLoading.value = false;
      return Future.error("Failed to get location or weather data: $e");
    } finally {
      _isLoading.value = false;
    }

  }

}
