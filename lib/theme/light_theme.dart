
import 'package:flutter/material.dart';

class LightTheme{
  static ThemeData getTheme (){
    return ThemeData.light().copyWith(
    primaryColor:const Color(0xFFFFFFFF),
    secondaryHeaderColor: const Color(0xff222a36),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        displayMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Gilroy'),
        displaySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        titleLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Assuming the default font is used for headline6
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          color: Colors.black87,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: Colors.black87,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
        labelLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Gilroy', // Use 'Poppins' font family here
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),

    );
  }
}
