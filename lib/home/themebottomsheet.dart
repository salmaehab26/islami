import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/theme_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';
class themebottomsheet extends StatelessWidget {
  themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changetheme(ThemeMode.light);

                },
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30, color:
                  provider.mytheme==ThemeMode.light ? Mytheme.primaryColor : Mytheme.blackcolor),),
              ),
              provider.mytheme==ThemeMode.light ? Icon(Icons.done, size: 35, color:Mytheme.primaryColor):SizedBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changetheme(ThemeMode.dark);

                },
                child: Text(
                  AppLocalizations.of(context)!.dark,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30, color:
                  provider.mytheme==ThemeMode.light ? Mytheme.blackcolor : Mytheme.primaryColor),
                ),
              ),
              provider.mytheme==ThemeMode.light ? SizedBox(): Icon(Icons.done, size: 35, color:Mytheme.primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}
