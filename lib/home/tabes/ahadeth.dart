import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/tabes/ahadethdetail.dart';
import 'package:islami/home/ahadethmodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ahadeth extends StatefulWidget {
  ahadeth({super.key});

  @override
  State<ahadeth> createState() => _ahadethState();
}

class _ahadethState extends State<ahadeth> {
  List<ahadethmodel> alahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (alahadeth.isEmpty) loadhadeeth();
    return Column(
      children: [
        Center(
          child: Container(
            width: 312,
            height: 219,
            child: Image(
              image: AssetImage('assets/images/hadeth_logo.png'),
            ),
          ),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text(
            AppLocalizations.of(context)!.ahadeth,
            style: Theme.of(context).textTheme.bodyLarge
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) => Center(
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ahadethdetail.routeName,
                        arguments: alahadeth[index]);
                  },
                  child: Text(alahadeth[index].title,
                      style:Theme.of(context).textTheme.bodySmall))),
          separatorBuilder: (context, index) => Divider(
              thickness: 2,
              color: Color(0xffB7935F),
              endIndent: 50,
              indent: 50),
          itemCount: alahadeth.length,
        ))
      ],
    );
  }

  Future<void> loadhadeeth() async {
    String loadfile = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = loadfile.split("#");

    for (int i = 0; i < ahadeth.length; i++) {
      String hadethnum = ahadeth[i];
      List<String> allahadeth = hadethnum.trim().split("\n");

      String title = allahadeth[0];
      allahadeth.removeAt(0);
      ahadethmodel ahadethmo =
          ahadethmodel(allahadeth: allahadeth, title: title);
      alahadeth.add(ahadethmo);
    }
    setState(() {});
  }
}
