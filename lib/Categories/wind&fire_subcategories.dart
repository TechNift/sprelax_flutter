import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprelax_flutter/Controller/sound_controller.dart';

class WindFireSubCategories extends StatefulWidget {
  @override
  _WindFireSubCategoriesState createState() => _WindFireSubCategoriesState();
}

class _WindFireSubCategoriesState extends State<WindFireSubCategories> {
  final List<String> subCatIcon = [
    "icon_air_light_wind",
    "icon_air_strong_wind",
    "icon_air_wind_mountain",
    "icon_air_wind_door",
    "icon_fire_campfire",
    "icon_fire_fireplace"
  ];

  final List<String> subCatTitle = [
    "Light wind",
    "Strong wind",
    "Mountain wind",
    "Under the door",
    "Campfire",
    "Fireplace"
  ];

  final List<String> subCatSound = [
    "sounds/air_light_wind.ogg",
    "sounds/air_strong_wind.ogg",
    "sounds/air_wind_mountain.ogg",
    "sounds/air_wind_door.ogg",
    "sounds/fire_campfire.ogg",
    "sounds/fire_fireplace.ogg"
  ];

  AudioCache audioPlayer = AudioCache();

  bool selected = false;

  Sounds _sounds = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: subCatIcon.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: .7),
      itemBuilder: (BuildContext context, i) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              audioPlayer.play(subCatSound[i]);
              setState(() {
                selected = !selected;
                _sounds.id = i;
              });
            },
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: _sounds.id == i ? Colors.blueAccent : Colors.black54,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(child: Image.asset("images/icons/${subCatIcon[i]}.png", height: 30, width: 30)),
                ),
                SizedBox(height: 10),
                Text(subCatTitle[i], textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 12))
              ],
            ),
          ),
        );
      },
    ));
  }
}
