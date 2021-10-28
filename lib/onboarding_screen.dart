import 'package:flutter/material.dart';
import 'package:sprelax_flutter/signin_page.dart';

class OnBoardingPage1 extends StatefulWidget {
  @override
  _OnBoardingPage1State createState() => _OnBoardingPage1State();
}

class _OnBoardingPage1State extends State<OnBoardingPage1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.asset("images/Onboarding - 1.png", fit: BoxFit.cover)),
      ),
    );
  }
}

//==========================================================================================

class OnBoardingPage2 extends StatefulWidget {
  @override
  _OnBoardingPage2State createState() => _OnBoardingPage2State();
}

class _OnBoardingPage2State extends State<OnBoardingPage2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage3()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.asset("images/Onboarding - 2.png", fit: BoxFit.cover)),
      ),
    );
  }
}

//==========================================================================================

class OnBoardingPage3 extends StatefulWidget {
  @override
  _OnBoardingPage3State createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingPage4()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Image.asset("images/Onboarding - 3.png", fit: BoxFit.cover)),
      ),
    );
  }
}

//==========================================================================================

class OnBoardingPage4 extends StatefulWidget {
  @override
  _OnBoardingPage4State createState() => _OnBoardingPage4State();
}

class _OnBoardingPage4State extends State<OnBoardingPage4> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Image.asset("images/Onboarding - 4.png", fit: BoxFit.cover),
      ),
    );
  }
}
