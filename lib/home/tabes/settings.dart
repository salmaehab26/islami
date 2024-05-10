import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/languagbottomsheet.dart';
import 'package:islami/home/themebottomsheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';
class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: languagbottomsheet(),

                      );
                    },
                  );
                },
                child: Text(
                  provider.languagecode== "ar"?AppLocalizations.of(context)!.ara :AppLocalizations.of(context)!.eng ,

                  // AppLocalizations.of(context)!.ara,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffB7935F))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      child: themebottomsheet(),
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
    provider.mytheme==ThemeMode.light ?AppLocalizations.of(context)!.light :AppLocalizations.of(context)!.dark ,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffB7935F))),
          ),
        ],
      ),
    );
  }
}
