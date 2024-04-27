import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryLightColor =const Color(0xffB7935F);
  static Color blackColor =const Color(0xff242424);
  static Color whiteColorWithOpacity =const Color(0xccffffff);
  static Color whiteColor =const Color(0xffffffff);
  static Color yellowColor =const Color(0xffFACC1D);
  static Color primaryDarkColor = const Color(0xff141A2E);
  static ThemeData lightMode =ThemeData(
    primaryColor: primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryLightColor,
      selectedItemColor: blackColor,
      showUnselectedLabels: true
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: blackColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
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
  );
  static ThemeData darkMode =ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      iconTheme: IconThemeData(color: MyTheme.yellowColor)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      selectedItemColor: yellowColor,
      showUnselectedLabels: true
    ),
    textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: whiteColor,
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
            color: whiteColor,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        titleMedium: TextStyle(
            color: whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.bold
        )
    ),
  );
}