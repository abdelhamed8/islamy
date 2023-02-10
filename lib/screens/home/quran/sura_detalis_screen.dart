import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/quran/sura_detalis_argument.dart';

class SuraDetalisScreen extends StatefulWidget {
  static String routeName = "sura detalis";

  @override
  State<SuraDetalisScreen> createState() => _SuraDetalisScreenState();
}

class _SuraDetalisScreenState extends State<SuraDetalisScreen> {
  String suraLine = "";
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as SuraDetalisArgument;
    if (suraLine.isEmpty) {
      readFile(args.fileName);
    }
    return Container(
      child: Scaffold(
        backgroundColor: MyThemeData.primiryColorDark,
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: TextStyle(color: MyThemeData.accentColorDark, fontSize: 24),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: MyThemeData.primiryColorDark,
        ),
        body:
        ListView.builder(
          itemCount:1,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  suraLine, style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color:MyThemeData.accentColorDark),
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

  readFile(String fileName) async {
    String fileContent = await rootBundle.loadString("assets/files/$fileName");
    List<String> lines = fileContent.split("\n");
    for(int i=0;i<lines.length;i++){
      print(i);      suraLine = suraLine + lines[i];
      suraLine = suraLine + " (${i+1}) ";
    }
    suraLine=suraLine.trim();
    setState(() {});
  }
}

