import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';

import '../Categories/city_subcategories.dart';
import '../Categories/countryside_subcategories.dart';
import '../Categories/home_subcategories.dart';
import '../Categories/night_subcategories.dart';
import '../Categories/ocean_subcategories.dart';
import '../Categories/oriental_subcategories.dart';
import '../Categories/rain_subcategories.dart';
import '../Categories/relaxing_subcategories.dart';
import '../Categories/river_subcategories.dart';
import '../Categories/wind&fire_subcategories.dart';
import '../setting_page.dart';

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
  AudioCache audioPlayer = AudioCache();
  var val;

  @override
  void initState() {
    PerfectVolumeControl.getVolume();
    PerfectVolumeControl.volume.then((value) => val = value);
    print(category.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "images/homeBackGround.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: TabBar(
                indicatorColor: Colors.white,
                indicator: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                isScrollable: true,
                tabs: [
                  Tab(
                      child: Text(
                    'Rain',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Tab(
                    child: Text(
                      'Ocean',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Wind & fire',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Countryside',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Oriental',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Night',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'City',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Relaxing',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'River',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: TabBarView(
                children: [
                  RainSubCategories(),
                  OceanSubCategories(),
                  WindFireSubCategories(),
                  CountrySideSubCat(),
                  OrientalSubCategories(),
                  NightSubCategories(),
                  CitySubCategories(),
                  HomeSubCategories(),
                  RelaxingSubCategories(),
                  RiverSubCategories()
                ],
              ),
            ),
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
                      GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    backgroundColor: Colors.black54,
                                    title: Column(
                                      children: [
                                        Text("No sounds Selected ",
                                            style: TextStyle(color: Colors.white, fontSize: 14)),
                                        SizedBox(height: 10),
                                        Divider(color: Colors.white),
                                        SizedBox(height: 10),
                                        Text("System Volume", style: TextStyle(color: Colors.white, fontSize: 14)),
                                        ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          horizontalTitleGap: 0,
                                          minLeadingWidth: 0,
                                          leading: Icon(Icons.volume_up, color: Colors.white),
                                          title: SliderTheme(
                                            data: SliderThemeData(inactiveTrackColor: Colors.white38, trackHeight: 1.0),
                                            child: Slider(
                                              activeColor: Colors.white,
                                              min: 0.0,
                                              max: 1.0,
                                              value: val,
                                              onChanged: (double value) {
                                                setState(() {
                                                  val = value;
                                                  PerfectVolumeControl.hideUI = true;
                                                  PerfectVolumeControl.setVolume(val);
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                    // actions: [audioPlayer.fixedPlayer.setVolume(volume)],
                                    );
                              },
                            );
                          },
                          child: Image.asset("images/icons/nav_playing_list.png", height: 30, width: 30)),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage()));
                          },
                          child: Image.asset("images/icons/nav_more.png", height: 30, width: 30)),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
// shrinkWrap: true,
// itemCount: category.length,
// scrollDirection: Axis.horizontal,
// itemBuilder: (BuildContext context, i) {
// return Padding(
// padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
// child: Container(
// height: 60,
// width: 70,
// child: TabBar(tabs: [
// Tab(child: Text(category[i], style: TextStyle(color: Colors.white, fontSize: 12)))
// ]),
// ),
// );
// }),
