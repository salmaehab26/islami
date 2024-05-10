import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static Color primaryColor = Color(0xffB7935F);
  static Color blackcolor = Colors.black;
  static ThemeData darktheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500)),
      appBarTheme: AppBarTheme(
          toolbarHeight: 35,
          titleTextStyle:
              GoogleFonts.elMessiri(fontSize: 30, color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white, size: 30)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xffFACC1D),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ));
  static ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.w500),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
      appBarTheme: AppBarTheme(
          toolbarHeight: 35,
          titleTextStyle:
              GoogleFonts.elMessiri(fontSize: 30, color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black, size: 30)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ));
}
