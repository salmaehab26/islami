import 'package:flutter/material.dart';
import 'package:islami/tasbeeh.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tasbeeh(),
    );
  }
}
