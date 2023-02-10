import 'package:flutter/material.dart';

class SettingsProviders extends ChangeNotifier {
  String currentLocal = "en" ;
  ThemeMode currentTheme = ThemeMode.dark;
  changeCurrentLocal(String newLocal){
  currentLocal = newLocal ;
  notifyListeners();
}
  changeCurrentTheme(ThemeMode newMode){
  currentTheme = newMode;
  notifyListeners();
}
}