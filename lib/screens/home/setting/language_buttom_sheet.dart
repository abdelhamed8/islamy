import 'package:flutter/material.dart';
import 'package:islamy1/provider/settings_providers.dart';
import 'package:provider/provider.dart';

import '../../../MyThemeData.dart';

class LanguageButtomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingsProviders providers = Provider.of(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
          providers.changeCurrentLocal("en");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("English", style: Theme.of(context).textTheme.bodyText1,),
          ),
        ),
        Divider(thickness: 3,color: MyThemeData.primiryColorDark,),
        InkWell(
          onTap: (){
            providers.changeCurrentLocal("ar");
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("العربية", style: Theme.of(context).textTheme.bodyText1,),
          ),
        )
      ],
    );
  }
}
