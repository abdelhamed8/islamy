import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/provider/settings_providers.dart';
import 'package:islamy1/screens/home/hadeth/hadeth_detalis_screen.dart';
import 'package:islamy1/screens/home/home_screen.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider
    (create: (context) => SettingsProviders() ,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
late SettingsProviders provider ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' ISLAMY',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.currentTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routes: {
        HomeScreen.routeName: (_)=>HomeScreen(),
        SuraDetalisScreen.routeName:(_)=>SuraDetalisScreen(),
        HadethDetalisScreen.routeName:(_)=>HadethDetalisScreen()
      },
      supportedLocales:[Locale("en"),Locale("ar")] ,
      locale: Locale(provider.currentLocal),
      initialRoute: HomeScreen.routeName,
    );
  }
}