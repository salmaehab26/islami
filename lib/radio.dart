import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _TasbeehState();
}

class _TasbeehState extends State<radio> {
  int index = 0;

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
          title: Text("ISLAMI",
              style: GoogleFonts.elMessiri(
                fontSize: 30,
              )),
          centerTitle: true,
          backgroundColor: Colors.transparent,

          // backgroundColor: Colors.transparent,
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
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                  label: "fvgds"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "fvgds"),
            ]),
        body: Column(children: [
          SizedBox(
            height: 100,
          ),
          Container(
            width: 412,
            height: 222,
            child: Image(image: AssetImage("assets/images/radio_image.png")),
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w600),
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
        ]),
      ),
    );
  }
}
