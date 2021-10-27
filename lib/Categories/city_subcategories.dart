import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprelax_flutter/Controller/sound_controller.dart';

class CitySubCategories extends StatefulWidget {
  @override
  _CitySubCategoriesState createState() => _CitySubCategoriesState();
}

class _CitySubCategoriesState extends State<CitySubCategories> {
  final List<String> subCatIcon = [
    "icon_city_musician",
    "icon_city_coffee_shop",
    "icon_city_fountain",
    "icon_city_children",
    "icon_city_traffic",
    "icon_city_subway",
    "icon_city_road_work",
    "icon_city_traffic"
  ];

  final List<String> subCatTitle = [
    "Musician",
    "Coffee shop",
    "Fountain",
    "Children",
    "Traffic",
    "Subway",
    "Road work",
    "Train station",
  ];

  final List<String> subCatSound = [
    "sounds/city_musician.ogg",
    "sounds/city_coffee_shop.ogg",
    "sounds/city_fountain.ogg",
    "sounds/city_children.ogg",
    "sounds/city_traffic.ogg",
    "sounds/city_subway.ogg",
    "sounds/city_works.ogg",
    "sounds/city_train_station.ogg"
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
