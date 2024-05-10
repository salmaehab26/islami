import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _TasbeehState();
}

class _TasbeehState extends State<radio> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          SizedBox(
            height: 100,
          ),
          Container(
            width: 412,
            height: 222,
            child: Image(image: AssetImage("assets/images/radio_image.png")),
          ),
          Text(
              AppLocalizations.of(context)!.radio,
              style: Theme.of(context).textTheme.bodyMedium,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image(image: AssetImage("assets/images/Icon metro.png")),
                    SizedBox(width: 40,),
                    Image(image: AssetImage("assets/images/Icon awesome-play.png")),
                    SizedBox(width: 40,),
                    Image(image: AssetImage("assets/images/Icon metro-next.png"))
                  ]),
            ),
          )
        ]);
  }
}
