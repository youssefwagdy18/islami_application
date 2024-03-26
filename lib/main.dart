import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran%20tab/sura_content.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename : (context)=>HomeScreen(),
        SuraContent.routename : (context)=>SuraContent(),
      },
      theme: MyTheme.lightMode,
    );
  }

}
