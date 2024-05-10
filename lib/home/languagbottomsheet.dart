import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/theme_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';
class languagbottomsheet extends StatelessWidget {
  languagbottomsheet({super.key});


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
                  provider.changelanguage("en");
                },
                child: Text(
                  AppLocalizations.of(context)!.eng,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      color:
                      provider.languagecode=="en" ? Mytheme.primaryColor : Mytheme.blackcolor),
                ),
              ),
              provider.languagecode=="en"  ? Icon(Icons.done, size: 35, color:Mytheme.primaryColor):SizedBox()

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changelanguage("ar");

                },
                child: Text(
                  AppLocalizations.of(context)!.ara,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      color:
                      provider.languagecode=="en"  ? Mytheme.blackcolor : Mytheme.primaryColor),
                ),
              ),
              provider.languagecode=="en"  ? SizedBox(): Icon(Icons.done, size: 35, color:Mytheme.primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}
