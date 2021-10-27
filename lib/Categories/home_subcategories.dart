import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprelax_flutter/Controller/sound_controller.dart';

class HomeSubCategories extends StatefulWidget {
  @override
  _HomeSubCategoriesState createState() => _HomeSubCategoriesState();
}

class _HomeSubCategoriesState extends State<HomeSubCategories> {
  final List<String> subCatIcon = [
    "icon_home_fan",
    "icon_home_air_conditioner",
    "icon_home_hairdryer",
    "icon_home_vacuum_cleaner",
    "icon_home_cat_purring",
    "icon_home_shower",
    "icon_home_washing_machine",
    "icon_home_jacuzzi",
    "icon_home_fridge",
    "icon_home_clock",
  ];

  final List<String> subCatTitle = [
    "Fan",
    "Air Conditioner",
    "Hairdryer",
    "Vacuum cleaner",
    "Cat purring",
    "Shower",
    "Washing machine",
    "Jacuzzi",
    "Fridge",
    "Vintage Clock",
  ];

  final List<String> subCatSound = [
    "sounds/home_fan.ogg",
    "sounds/home_air_conditioner.ogg",
    "sounds/home_hairdryer.ogg",
    "sounds/home_vacuum_cleaner.ogg",
    "sounds/home_cat_purring.ogg",
    "sounds/home_shower.ogg",
    "sounds/home_washing_machine.ogg",
    "sounds/home_jacuzzi.ogg",
    "sounds/home_fridge.ogg",
    "sounds/home_clock.ogg"
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
