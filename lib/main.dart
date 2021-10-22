import 'package:flutter/material.dart';
import 'package:sprelax_flutter/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SP Relax',
      theme: ThemeData(
        primaryColor: Color(0xff7030A0),
      ),
      home: SplashPage(),
    );
  }
}
