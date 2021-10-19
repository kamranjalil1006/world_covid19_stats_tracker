import 'package:flutter/material.dart';
import 'package:covid_19_tracker/screens/01_splash_screen.dart';

void main() {
  runApp(CovidTracker());
}

class CovidTracker extends StatelessWidget {
  const CovidTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF5A82AA),
          scaffoldBackgroundColor: Colors.black),
      home: SplashScreen(),
    );
  }
}
