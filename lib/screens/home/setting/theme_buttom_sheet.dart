import 'package:flutter/material.dart';
import 'package:islamy1/provider/settings_providers.dart';
import 'package:provider/provider.dart';

import '../../../MyThemeData.dart';

class ThemeButtomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingsProviders providers = Provider.of(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
          providers.changeCurrentTheme(ThemeMode.light);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Light", style: Theme.of(context).textTheme.bodyText1,),
          ),
        ),
        Divider(thickness: 3,color: MyThemeData.primiryColorDark,),
        InkWell(
          onTap: (){
            providers.changeCurrentTheme(ThemeMode.dark);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Dark", style: Theme.of(context).textTheme.bodyText1,),
          ),
        )
      ],
    );
  }
}
