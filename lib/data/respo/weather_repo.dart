// import 'dart:convert';
//
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;
// import 'package:weather_app/data/model/weather_model.dart';
// import 'package:weather_app/unit/const.dart';
//
// class WeatherRepo {
//
//   final String? apiKey;
//   WeatherRepo({this.apiKey});
//
//   Future<Weather> getWeather(String cityName) async {
//     final response = await http.get(Uri.parse(
//         '${Const.domain}q=$cityName&appid=$apiKey'
//         )
//     );
//
//       if (response.statusCode==200){
//
//         return Weather.fromJson(jsonDecode(response.body));
//       }else {
//         throw Exception('Failed to load weather data');
//       }
//
//
//
//     }
//
//     Future<String> getCurrentCity() async {
//     // get permission from user
//     LocationPermission permission=await Geolocator.checkPermission();
//     if(permission==LocationPermission.denied){
//       permission=await Geolocator.requestPermission();
//     }
//
//     // fetch the current location
//
//       Position position=await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best
//       );
//
//     //convert the location  into a list placeMark object
//
//       List<Placemark> placeMark= await placemarkFromCoordinates(position.latitude, position.longitude);
//     // extract the city name from the first place-mark
//
//       String? city =placeMark[0].locality;
//        print('my city$city');
//       return city?? "jnjbjb";
//
//     }
//   }

