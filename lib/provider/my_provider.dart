import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myprovider extends ChangeNotifier {
  String languagecode = "en";
  ThemeMode mytheme = ThemeMode.light;

  changelanguage(String code) {
    languagecode = code;
    notifyListeners();
  }

  changetheme(ThemeMode mode) {
    mytheme = mode;
    notifyListeners();
  }

  String getBackgroundimagepath() {
    if (mytheme == ThemeMode.light) {
      return "assets/images/BACK.png";
    } else
      return "assets/images/dark_bg.png";
  }
  String get_ahadeth_imagepath() {
    if (mytheme == ThemeMode.light) {
      return "assets/images/hadeth_logo.png";
    } else
      return "assets/images/head_sebha_dark.png";
  }
  String get_bodysebha_imagepath() {
    if (mytheme == ThemeMode.light) {
      return "assets/images/body_sebha_logo.png";
    } else
      return "assets/images/body_sebha_dark.png";
  }
  String get_headsebha_imagepath() {
    if (mytheme == ThemeMode.light) {
      return "assets/images/head_sebha_logo.png";
    } else
      return "assets/images/head_sebha_dark.png";
  }

}
