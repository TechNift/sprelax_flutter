import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:sprelax_flutter/faq_page.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 25),
                Image.asset("images/splashIcon.png", height: 160, width: 160),
                SizedBox(),
                Text("Setting", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                MainContainer(txt: "Provide Feedback"),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    launch('https://socialplugger.com/terms-and-conditions');
                  },
                  child: MainContainer(
                    txt: "Term and Conditions",
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    launch('https://socialplugger.com/privacy-policy');
                  },
                  child: MainContainer(
                    txt: "Privacy Policy",
                  ),
                ),
                SizedBox(height: 20),
                MainContainer(txt: "Contact us"),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FAQPage()));
                  },
                  child: MainContainer(txt: "FAQ"),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    launch('https://socialplugger.com');
                  },
                  child: MainContainer(
                    txt: "Visit Our Website",
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Share.share("Social Plugger Relax App");
                  },
                  child: MainContainer(txt: "Share THis App"),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    launch('https://socialplugger.com/about-us');
                  },
                  child: MainContainer(
                    txt: "About Us",
                  ),
                ),
                SizedBox(height: 30),
                Text("demo@gmail.com", style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(color: Color(0xff7030A0), borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('Logout',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({this.txt});

  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xff7030A0), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text('$txt',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
