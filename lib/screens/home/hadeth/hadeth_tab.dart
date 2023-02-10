import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy1/screens/home/hadeth/hadeth_detalis_screen.dart';

class hadethTab extends StatefulWidget {
  List<HadethModel> ahadethModels = [];

  @override
  State<hadethTab> createState() => hadethTabState();
}

class hadethTabState extends State<hadethTab> {
  List<HadethModel> ahadethModel = [];
  @override
  Widget build(BuildContext context) {
    if (ahadethModel.isEmpty) {
      readAhadethFile();
    }
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/images/hadeth_logo.png",
            width: 250,
            height: 250,
          ),
          Divider(
            thickness: 3,
            color: MyThemeData.primiryColor,
          ),
          Text(AppLocalizations.of(context)!.ahadeth,
              style: TextStyle(
                  color: MyThemeData.accentColorDark,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          Divider(
            thickness: 3,
            color: MyThemeData.primiryColor,
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              itemCount: ahadethModel.length,
              itemBuilder: (context, index) => Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, HadethDetalisScreen.routeName,
                            arguments: ahadethModel[index]);
                      },
                      child: Text(ahadethModel[index].title,))),
            ),
          ),
          Divider(
            thickness: 3,
            color: MyThemeData.primiryColor,
          ),

        ],
      ),
    );
  }

  readAhadethFile() async {
    String fileContent = await rootBundle.loadString("assets/ahadeth .txt");
    List<String> ahadeth = fileContent.split("#\r\n");
    for (int i = 0; i < ahadeth.length; i++) {
      List<String> singleHadethLines = ahadeth[i].split("\n");
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);
      String content = singleHadethLines.join();
      ahadethModel.add(HadethModel(title, content));
    }
    setState(() {});
  }
}

class HadethModel {
  String title;
  String content;
  HadethModel(this.title, this.content);
}
