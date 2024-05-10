import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';
class Tasbeeh extends StatefulWidget {
  const Tasbeeh({super.key});

  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  double ang=0;
  int i = 0;
  int count = 0;
  int index = 0;
  List<String> tasbeeha = [
    "سبحان الله",
    "الحمدلله",
    "لا الله الا الله",
    "الله اكبر",
    "استغفر الله"
  ];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);

    return Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Image(
                          image:
                              AssetImage(provider.get_headsebha_imagepath()))),
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    child: Transform.rotate(
                      angle: ang,
                      child: InkWell(
                        onTap: () {
                          ang=ang+.5;
                          count++;
                          t();
                          setState(() {});
                        },
                        child: Image(
                          image: AssetImage(provider.get_bodysebha_imagepath()),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(AppLocalizations.of(context)!.tasbeeh,
                    style: Theme.of(context).textTheme.bodyMedium
                    ),
              ),
              Container(
                width: 69,
                height: 81,
                decoration: BoxDecoration(
                  color: Color(0xffB7935F),
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                child: Center(
                    child: Text("$count",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ))),
              ),
              // SizedBox(height: 20,)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 137,
                  height: 51,
                  decoration: BoxDecoration(
                      color: Color(0XFFB7935F),
                      borderRadius: BorderRadiusDirectional.circular(45)),
                  child: Center(
                    child: Text("${tasbeeha[i]}",
    style: Theme.of(context).textTheme.bodyMedium
                        )),
                  ),
                ),
            ],
          );
  }

  t() {
    if (count==30){
      if (i < tasbeeha.length) i = i + 1;
      if (i == tasbeeha.length) {
        i = 0;
      }
      count = 0;}

  }
}
