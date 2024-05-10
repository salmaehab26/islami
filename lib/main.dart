import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/home/home.dart';
import 'package:islami/home/tabes/ahadethdetail.dart';
import 'package:islami/home/tabes/quran.dart';
import 'package:islami/home/tabes/radio.dart';
import 'package:islami/home/tabes/settings.dart';
import 'package:islami/home/tabes/sura.dart';
import 'package:islami/home/tabes/tasbeeh.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'home/tabes/ahadeth.dart';
import 'home/theme_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => Myprovider(),
      child: MyApp()));
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<Myprovider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
     locale: Locale(provider.languagecode),
     initialRoute:homescreen.routeName ,
      theme: Mytheme.lighttheme,
      darkTheme: Mytheme.darktheme,
      themeMode: provider.mytheme,
      routes:
      {
        homescreen.routeName:(context) => homescreen(),
        suraditail.routeName:(context) => suraditail(),
        ahadethdetail.routeName:(context) => ahadethdetail(),

      },
    );
  }


}
