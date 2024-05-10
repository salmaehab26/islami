import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/tabes/sura.dart';
import 'package:islami/home/suramodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class quran extends StatelessWidget {
   quran({super.key});
  List <String> suras=['الفاتحه',"البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Container(
          child:
              Image(image: AssetImage("assets/images/qur2an_screen_logo.png")),
        )),
        Divider(color: Color(0xffB7935F),thickness: 3,),
        Text(                  AppLocalizations.of(context)!.suraname,
    style: Theme.of(context).textTheme.bodyMedium),
        Divider(color: Color(0xffB7935F),thickness: 3,),

        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
               return Center(
                 child: InkWell(
                   onTap: () {
                     Navigator.pushNamed(context, suraditail.routeName,arguments: suramodel(name: suras[index], index: index));
                   },
                   child: Text(suras[index],style: Theme.of(context).textTheme.bodySmall,),
                 ),
               );
          
          },
              separatorBuilder:(context, index) {
                return Divider(color: Color(0xffB7935F),thickness: 2,
                indent: 50,
                endIndent: 50,);
              },
            itemCount: suras.length,
          ),
        )

      ],
    );
  }
}
