import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/ahadethmodel.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class ahadethdetail extends StatelessWidget {
  ahadethdetail({super.key});

  static const String routeName = "ahadethdetail";
  @override
  Widget build(BuildContext context) {
    ahadethmodel modelaha =
        ModalRoute.of(context)!.settings.arguments as ahadethmodel;
    var provider=Provider.of<Myprovider>(context);

    return Stack(
      children: [
        Image(
          image: AssetImage(provider.getBackgroundimagepath()),
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(

              title: Text(modelaha.title,)),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(20)),
                width: 354,
                height: 652,
                 child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    modelaha.allahadeth[index],
                    style:Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                 itemCount: modelaha.allahadeth.length,
                )
   ),
          ),
        )
      ],
    );
  }
}
