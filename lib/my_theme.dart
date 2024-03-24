import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryLightColor =const Color(0xffB7935F);
  static Color blackColor =const Color(0xff242424);
  static ThemeData lightMode =ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      titleMedium: TextStyle(
        color: blackColor,
        fontSize: 25,
        fontWeight: FontWeight.bold
      )
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      showUnselectedLabels: true
    ),
  );
}