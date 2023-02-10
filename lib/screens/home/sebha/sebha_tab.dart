import 'package:flutter/material.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int counter = 0;
  int counter2 = 0;
  double angle = 0;
  List<String> tasbehat = ['سبحان الله ', ' الحمد لله', 'الله اكبر'];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: width*0.24,
                  child: Image(
                    image: AssetImage('assets/images/head_sebha_dark.png'),

                  ),
                ),
                Transform.rotate(
                  angle: angle,
                  child: Image(
                    image: AssetImage("assets/images/body_sebha_dark.png"),
                    height: height*0.43,
                    width: width*0.52,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(AppLocalizations.of(context)!.islamy, style: Theme.of(context).textTheme.headline4),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: MyThemeData.accentColorDark),
              child: Text('$counter',
                  style: TextStyle(color: MyThemeData.primiryColorDark,
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  pressed();
                  angle += 25;
                  setState(() {});
                },
                child: Text(
                  tasbehat[counter2],
                  style: TextStyle(
                      color: MyThemeData.primiryColorDark,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  primary: MyThemeData.accentColorDark == ThemeMode.light
                      ? MyThemeData.primiryColorDark
                      : MyThemeData.accentColorDark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void pressed() {
    if (counter == 33) {
      counter = 0;
      if (counter2 == tasbehat.length - 1) {
        counter2 = 0;
      } else {
        counter2++;
      }
    } else {
      counter++;
    }
  }
}
