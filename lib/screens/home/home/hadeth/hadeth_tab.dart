import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy1/MyThemeData.dart';

class hadethTab extends StatefulWidget {
  List<HadethModel> ahadethModels = [];
  @override
  State<hadethTab> createState() => hadethTabState();
}

class hadethTabState extends State<hadethTab> {
  var ahadethModel;
  @override
  Widget build(BuildContext context) {
    if (ahadethModel.isEmpty!){
      readAhadethFile();
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Column(
        children: [
          Expanded(
              flex: 2, child: Image.asset("assets/images/hadeth_logo.png")),
          Divider(
            thickness: 3,
            color: MyThemeData.primiryColor,
          ),
          Text("الاحاديث",
              style: TextStyle(
                  color: MyThemeData.accentColor,
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
              itemBuilder: (context, index) => ahadethModel,
            ),
          )
        ],
      ),
    );
  }

  readAhadethFile() async {
    String fileContent = await rootBundle.loadString("assets/ahadeth.txt");
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
