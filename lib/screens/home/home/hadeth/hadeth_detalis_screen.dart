import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/hadeth/hadeth_tab.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_argument.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_screen.dart';
class HadethDetalisScreen extends StatefulWidget {
  static String routeName = "hadeth";
  @override
  HadethDetalisScreenState createState() => HadethDetalisScreenState();
}
class HadethDetalisScreenState extends State<SuraDetalisScreen> {
  String Hadeth = "";
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            args.title,
            style: TextStyle(color: MyThemeData.accentColor, fontSize: 24),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  Hadeth,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: MyThemeData.accentColor),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
