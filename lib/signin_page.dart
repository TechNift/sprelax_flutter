import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sprelax_flutter/home_page.dart';
import 'package:sprelax_flutter/setting_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color clr = Theme.of(context).primaryColor;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Image.asset("images/splashIcon.png", height: 160, width: 160),
            SizedBox(height: 20),
            Text(
              "Welcome to Social Plugger SP Relax",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text("Log in", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            FormBuilderTextField(
              name: 'email',
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: clr),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: clr))),
            ),
            SizedBox(height: 10),
            FormBuilderTextField(
              name: 'password',
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: clr),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: clr))),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: CustomButton(txt: "LOG IN"),
            ),
            SizedBox(height: 10),
            Text("REGISTRATION FOR AN ACCOUNT?", style: TextStyle(color: clr))
          ],
        ),
      ),
    ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({this.txt});

  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xff7030A0), borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text('$txt',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
