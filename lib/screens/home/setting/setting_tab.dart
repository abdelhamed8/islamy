import 'package:flutter/material.dart';
import 'package:islamy1/provider/settings_providers.dart';
import 'package:islamy1/screens/home/setting/language_buttom_sheet.dart';
import 'package:islamy1/screens/home/setting/theme_buttom_sheet.dart';
import 'package:provider/provider.dart';

class Setting_Tab extends StatefulWidget {
  @override
  State<Setting_Tab> createState() => _Setting_TabState();
}

class _Setting_TabState extends State<Setting_Tab> {
  @override
  Widget build(BuildContext context) {
    SettingsProviders providers = Provider.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            providers.currentLocal == "en" ? "Language" : "اللغة",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        InkWell(
          onTap: (){
            showLanguageButtomSheet();
          },
          child: Container(
            color: Colors.white,
            margin: EdgeInsetsDirectional.all(18),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text( providers.currentLocal == "ar" ? "العربية" : "English"
                  ,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Spacer(),
                Icon(Icons.arrow_downward),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Theme",
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        InkWell(
          onTap: (){
            showThemeButtomSheet();
          },
          child: Container(
            color: Colors.white,
            margin: EdgeInsetsDirectional.all(18),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  "light",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Spacer(),
                Icon(Icons.arrow_downward),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return LanguageButtomSheet();
    });
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(context: context, builder:(context){
     return ThemeButtomSheet();
    });
  }
}
