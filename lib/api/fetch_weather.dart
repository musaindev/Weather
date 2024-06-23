import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/api/api_key.dart';
import 'package:weather_app/data/model/weather_data.dart';
import 'package:weather_app/data/model/weather_data_current.dart';

class FetchWeatherApi {
  WeatherData? weatherData;

  // processing the data from response -> to json

  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));
    print(weatherData?.current);
    return weatherData!;
  }
}

String apiURL(var lat, var lon) {
  String url;
  url =
      'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&$lon=76.1216666&exclude=minutely&appid=$apiKey&unites=metric';
  return url;
}
