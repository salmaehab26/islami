import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/tabes/ahadeth.dart';
import 'package:islami/home/tabes/quran.dart';
import 'package:islami/home/tabes/radio.dart';
import 'package:islami/home/tabes/settings.dart';
import 'package:islami/home/tabes/tasbeeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';
class homescreen extends StatefulWidget {
  homescreen({super.key});

  static const String routeName = "home";

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);

    return Container(

        decoration: BoxDecoration(

            image: DecorationImage(
          image: AssetImage(provider.getBackgroundimagepath()),
          fit: BoxFit.fill,
        )),
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 35,
            title: Text(AppLocalizations.of(context)!.appname,
                ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                    label: "fvgds"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                    label: "fvgds"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                    label: "fvgds"),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                    label: "fvgds"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "fvgds"),
              ]),
          body: tab[index],
        ));
  }

  List<Widget> tab = [
    quran(),
    Tasbeeh(),
    radio(),
    ahadeth(),
    settings(),
  ];
}
