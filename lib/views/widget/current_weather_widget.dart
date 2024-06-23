import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weather_app/data/model/weather_data_current.dart';

class CurrentWeatherWidget extends StatelessWidget{
   final WeatherDataCurrent weatherDataCurrent;

  const CurrentWeatherWidget({super.key,required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    print("${weatherDataCurrent.current.temp}");
    return Obx(() => Container(
      child: Text("${weatherDataCurrent.current.weather?.length}"),
    ) );


  }

}