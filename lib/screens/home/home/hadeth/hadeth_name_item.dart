import 'package:flutter/material.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/hadeth/hadeth_tab.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_argument.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_screen.dart';
import 'package:islamy1/screens/home/hadeth/hadeth_name_item.dart';

class HadethNameItem extends StatelessWidget {
  HadethModel ahadeth;
  HadethNameItem(this.ahadeth);
  Widget build(BuildContext context) {
    var ahadethModel;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ahadethModel.routeName,
            arguments: ahadeth);
      },
      child: Container(
        child: Column(
          children: [
            Expanded(
                flex: 3, child: Image.asset("assets/images/hadeth_logo.png")),
            Divider(
              thickness: 3,
              color: MyThemeData.primiryColor,
            ),
            Text(
              ahadeth.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyThemeData.accentColor),
            ),
            Divider(
              color: MyThemeData.primiryColor,
              thickness: 3,
            ),
            Expanded(
              flex: 7,
              child: ListView.builder(
                  itemCount: ahadethModel.title,
                  itemBuilder: (context, index) =>
                      HadethNameItem(ahadethModel[index])),
            ),
          ],
        ),
      ),
    );
  }
}
