import 'package:flutter/material.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_argument.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_screen.dart';

class SuraNameItem extends StatelessWidget {
   String suraName ;
   int index;
   SuraNameItem(this.suraName,this.index);


  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetalisScreen.routeName,arguments: SuraDetalisArgument
          (suraName, "${index+1}.txt"));
      },
      child: Container(
        child:
        Column(
          children: [
            Text(suraName,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,color: MyThemeData.accentColorDark
            ),),
            Divider(color: MyThemeData.primiryColor,thickness: 3,)
          ],
        ),
      ),
    );
  }
}
