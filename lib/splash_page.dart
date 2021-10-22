import 'package:flutter/material.dart';
import 'package:sprelax_flutter/signup_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
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
