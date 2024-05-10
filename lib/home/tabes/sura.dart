import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/suramodel.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class suraditail extends StatefulWidget {
  suraditail({super.key});

  static const String routeName = "sura";

  @override
  State<suraditail> createState() => _suraditailState();
}

class _suraditailState extends State<suraditail> {
  List<String> s = [];

  @override
  Widget build(BuildContext context) {
    suramodel model = ModalRoute.of(context)!.settings.arguments as suramodel;
    if (s.isEmpty) loadfile(model.index);
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
          appBar: AppBar(title: Text(model.name)),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                width: 354,
                height: 652,
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    s[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  itemCount: s.length,
                )),
          ),
        )
      ],
    );
  }

  Future<void> loadfile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split("\n");
    s = lines;
    setState(() {});
  }
}
