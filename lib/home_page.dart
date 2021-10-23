import 'package:flutter/material.dart';
import 'package:sprelax_flutter/Categories/rain_subcategories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = [
    "Rain",
    "Ocean",
    "Wind & fire",
    "Countryside",
    "Oriental",
    "Night",
    "City",
    "Home",
    "Relaxing",
    "River"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/homeBackGround.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 40,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: category.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Container(
                          height: 60,
                          width: 70,
                          child: Text(category[i], style: TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      );
                    }),
              )),
          Positioned(
              top: 50,
              child: Container(height: 500, width: MediaQuery.of(context).size.width, child: RainSubCategories())),
          Positioned(
            bottom: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                color: Colors.black.withOpacity(.65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset("images/icons/nav_play.png", height: 30, width: 30),
                    Image.asset("images/icons/nav_timer.png", height: 30, width: 30),
                    Image.asset("images/icons/nav_collection.png", height: 30, width: 30),
                    Image.asset("images/icons/nav_playing_list.png", height: 30, width: 30),
                    Image.asset("images/icons/nav_more.png", height: 30, width: 30),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
