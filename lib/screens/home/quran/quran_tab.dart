import 'package:flutter/material.dart';
import 'package:islamy1/MyThemeData.dart';
import 'package:islamy1/screens/home/quran/sura_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../provider/settings_providers.dart';
class QuranTab extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه", "البقرة", "آل عمران", "النساء", "المائدة", "الأنعام", "الأعراف",
    "الأنفال", "التوبة", "يونس", "هود", "يوسف", "الرعد", "إبراهيم", "الحجر",
    "النحل", "الإسراء", "الكهف", "مريم", "طه",
    "الأنبياء", "الحج", "المؤمنون", "النّور", "الفرقان", "الشعراء", "النّمل",
    "القصص", "العنكبوت", "الرّوم", "لقمان", "السجدة",
    "الأحزاب", "سبأ", "فاطر", "يس", "الصافات", "ص", "الزمر", "غافر", "فصّلت","الشورى", "الزخرف", "الدّخان",
    "الجاثية", "الأحقاف", "محمد", "الفتح", "الحجرات", "ق", "الذاريات", "الطور", "النجم",
    "القمر", "الرحمن", "الواقعة", "الحديد", "المجادلة", "الحشر", "الممتحنة",
    "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق", "التحريم", "الملك",
    "القلم", "الحاقة", "المعارج", "نوح", "الجن", "المزّمّل", "المدّثر", "القيامة", "الإنسان",
    "المرسلات", "النبأ", "النازعات", "عبس", "التكوير", "الإنفطار", "المطفّفين",
    "الإنشقاق", "البروج", "الطارق", "الأعلى", "الغاشية", "الفجر", "البلد",
    "الشمس", "الليل", "الضحى", "الشرح", "التين", "العلق", "القدر",
    "البينة", "الزلزلة", "العاديات", "القارعة", "التكاثر",
    "العصر", "الهمزة", "الفيل", "قريش", "الماعون", "الكوثر",
    "الكافرون", "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];
  Widget  build(BuildContext context) {
    SettingsProviders provider = Provider.of(context);
    return Container(
      child: Column(
        children: [
          Expanded(flex:2,child: Image.asset("assets/images/qur2an_screen_logo.png")),
          Divider(thickness: 3,color: MyThemeData.accentColorDark,),
          Text(AppLocalizations.of(context)!.suraName, style: TextStyle(
              color: MyThemeData.accentColorDark,fontSize: 30,
              fontWeight: FontWeight.bold)),
          Divider(thickness: 3,color: MyThemeData.accentColorDark,),
          Expanded(flex:8,
            child: ListView.builder(
                 itemCount: suraNames.length,
                   itemBuilder: (context,index,) =>SuraNameItem(suraNames[index],index)),
          ),
        ],
      ),
    );
  }
}