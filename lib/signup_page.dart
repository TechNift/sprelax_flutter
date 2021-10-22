import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sprelax_flutter/signin_page.dart';

class SignUpPage extends StatelessWidget {
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
            SizedBox(height: 10),
            Text("Registration", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            FormBuilderTextField(
              name: 'email',
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: clr),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: clr)),
              ),
            ),
            SizedBox(height: 10),
            FormBuilderTextField(
              name: 'password',
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: clr),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: clr))),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
              },
              child: Text("Registration"),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(clr)),
            ),
            SizedBox(height: 10),
            Text("ALREADY HAVE AN ACCOUNT?", style: TextStyle(color: clr))
          ],
        ),
      ),
    ));
  }
}