import 'package:flutter/cupertino.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controller/global_controller.dart';

class Header extends StatefulWidget{
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String city='';

  String date=DateFormat("yMMMMd").format(DateTime.now());

  final GlobalController globalController = Get.put(
      GlobalController(), permanent: true);
  
  @override
  void initState() {
    getAddress(
      globalController.getLatitude().value,
      globalController.getLongitude().value
    );
    super.initState();
  }
  
  getAddress(lat,long)async{
    List<Placemark> placeMark=await placemarkFromCoordinates(lat, long);
    Placemark place=placeMark[0];
    print(place);
    setState(() {
       city=place.locality??"unknown Location";
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Container(
         margin: EdgeInsets.only(top: 20,left: 20),
         alignment: Alignment.topLeft,
         child: Text(city,style: Get.textTheme.headlineMedium,),
       ),
       Container(
         margin: EdgeInsets.only(top: 20,left: 20),
         alignment: Alignment.topLeft,
         child: Text(date,style: Get.textTheme.bodyMedium,),
       )
     ],
   );
  }
}