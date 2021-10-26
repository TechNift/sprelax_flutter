import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sprelax_flutter/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final fbKey = GlobalKey<FormBuilderState>();

  var _userEmail;
  var _success;

  void _register() async {
    final User? user = (await _auth.createUserWithEmailAndPassword(
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
        _success = true;
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
                    _register();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  }
                },
                child: CustomButton(txt: "Registration"),
              ),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Text("ALREADY HAVE AN ACCOUNT?", style: TextStyle(color: clr)))
            ],
          ),
        ),
      ),
    ));
  }
}
