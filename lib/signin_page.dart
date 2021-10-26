import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sprelax_flutter/home_page.dart';
import 'package:sprelax_flutter/signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final fbKey = GlobalKey<FormBuilderState>();

  var _userEmail;
  var _success;

  void _signInWithEmailAndPassword() async {
    final User? user = (await _auth.signInWithEmailAndPassword(
      email: fbKey.currentState?.value['email'],
      password: fbKey.currentState?.value['password'],
    ))
        .user;

    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Color clr = Theme.of(context).primaryColor;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: FormBuilder(
          key: fbKey,
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
                validator: FormBuilderValidators.required(context, errorText: 'Email is required'),
              ),
              SizedBox(height: 10),
              FormBuilderTextField(
                name: 'password',
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: clr),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: clr))),
                validator: FormBuilderValidators.required(context, errorText: 'Password is required'),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  if (fbKey.currentState!.saveAndValidate()) {
                    _signInWithEmailAndPassword();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: CustomButton(txt: "LOG IN"),
              ),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text("REGISTRATION FOR AN ACCOUNT?", style: TextStyle(color: clr)))
            ],
          ),
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
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
