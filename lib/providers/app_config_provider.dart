import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage ='ar';
  ThemeMode appTheme =ThemeMode.light;
  changeLanguage(String newLanguage){
    if(appLanguage == newLanguage){
      return;
    }
    appLanguage=newLanguage;
    notifyListeners();
  }

  changeMode(ThemeMode newMode){
    if(appTheme==newMode){
      return;
    }
    appTheme=newMode;
    notifyListeners();
  }
}