import 'package:flutter/material.dart';
import 'package:sprelax_flutter/onboarding_screen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.asset("images/splashIcon.png", height: 220, width: 220)),
      ),
    );
  }
}
