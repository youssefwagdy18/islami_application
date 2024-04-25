import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran%20tab/item-sura-name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
   static List <String> suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/quran_image.png'),
          Divider(
            color: MyTheme.primaryLightColor,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!.sura_name,style: Theme.of(context).textTheme.titleMedium),
          Divider(
            color: MyTheme.primaryLightColor,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index){
              return ItemSuraName(
                name :suraName[index],index: index,);
            },
                separatorBuilder: (context,index){
              return Divider(
                thickness: 2,
                color: MyTheme.primaryLightColor,
              );
                },
                itemCount: suraName.length),
          )
        ],
      ),
    );
  }
}
