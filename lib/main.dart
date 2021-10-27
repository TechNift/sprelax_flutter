import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/sound_controller.dart';
import '../splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Sounds _sounds = Get.put<Sounds>(Sounds());

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
