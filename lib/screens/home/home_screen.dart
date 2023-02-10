import 'package:flutter/material.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/hadeth/hadeth_tab.dart';
import 'package:islamy1/screens/home/quran/quran_tab.dart';
import 'package:islamy1/screens/home/radio/radio_tab.dart';
import 'package:islamy1/screens/home/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy1/screens/home/setting/setting_tab.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_providers.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 4;
  List <Widget> tabs =[QuranTab(),hadethTab(),sebhaTab(),radioTab(),Setting_Tab()];

  @override
  Widget build(BuildContext context) {
    SettingsProviders provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:AssetImage( provider.currentTheme == ThemeMode.light ?
            "assets/images/default_bg.png":"assets/images/dark_bg.png"))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islamy, style: TextStyle(
              fontWeight: FontWeight.bold,color:MyThemeData.accentColorDark,fontSize: 35)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: MyThemeData.accentColorDark),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (clickedIndex){
              selectedIndex = clickedIndex;
              setState(() {});
            },
            selectedItemColor: MyThemeData.primiryColorDark,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: "Quran"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label: "Hadeth"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: "Sebha"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label: "Radio"),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
            ],
          ),
        ),
       body:
       tabs[selectedIndex],
      ),
    );
  }
}
