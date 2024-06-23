import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:weather_app/data/model/weather_data_current.dart';
import 'package:weather_app/views/widget/current_weather_widget.dart';
import 'package:weather_app/views/widget/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});




  @override
  Widget build(BuildContext context) {
    final GlobalController globalController = Get.put(
        GlobalController(), permanent: true);
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
        backgroundColor: Get.theme.primaryColor,
        body: SafeArea(
        child:Obx(()
    =>
    globalController
        .checkLoading()
        .isTrue ? const Center(child: CircularProgressIndicator()

    ) : ListView(
      scrollDirection: Axis.vertical,
      children: [
        Header(),
        SizedBox(height: 15,),
        CurrentWeatherWidget(weatherDataCurrent:globalController.weather!.getCurrentWeather() )
      ],
    )
    )
    ));
  }
}
