import 'package:flutter/material.dart';

class MyThemeData{
  static Color primiryColor=Color(0xffB7935F);
  static Color accentColor=Color(0xff242424);
  static Color primiryColorDark=Color(0xff141A2E);
  static Color accentColorDark=Color(0xffFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primiryColor,
    accentColor: accentColor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle:TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:MyThemeData.accentColor),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primiryColor,
      showUnselectedLabels: true,
      selectedItemColor: MyThemeData.accentColor,
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      headline5: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color:  MyThemeData.primiryColor),
      headline4: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: MyThemeData.accentColor),
      bodyText1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: MyThemeData.primiryColor),
      bodyText2: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: MyThemeData.accentColor),
      subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:  MyThemeData.primiryColor),
      subtitle2: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: MyThemeData.accentColor),
    ),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: primiryColorDark,
      accentColor: accentColorDark,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        selectedItemColor: MyThemeData.primiryColorDark,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
          headline5: TextStyle(fontSize:25 , fontWeight: FontWeight.bold , color: MyThemeData.accentColorDark ),
          headline4:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          bodyText1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color:Colors.black),
          bodyText2 : TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Colors.white),
          subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          subtitle2: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: MyThemeData.primiryColorDark)
      )
  );
}
