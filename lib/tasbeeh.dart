import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tasbeeh extends StatefulWidget {
  const Tasbeeh({super.key});

  @override
  State<Tasbeeh> createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
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
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/BACK.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("اسلامي",
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                )),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Color(0xffB7935F),
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
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
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image(image: AssetImage("assets/images/head_sebha_logo.png")),
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                    child: InkWell(
                      onTap: () {
                        count++;
                        t();
                        setState(() {});
                      },
                      child: Image(
                          image:
                              AssetImage("assets/images/body_sebha_logo.png")),
                    ),
                  )
                ],
              ),
              Text("عدد التسبيحات",
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  )),
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
                        style: GoogleFonts.inter(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
              )
            ],
          )),
    );
  }

  t() {
    if (count == 30) {
      if (i < tasbeeha.length) i = i + 1;
      if (i == tasbeeha.length) {
        i = 0;
      }
      count = 0;
    }
  }
}
