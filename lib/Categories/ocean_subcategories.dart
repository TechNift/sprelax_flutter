import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprelax_flutter/Controller/sound_controller.dart';

class OceanSubCategories extends StatefulWidget {
  @override
  _OceanSubCategoriesState createState() => _OceanSubCategoriesState();
}

class _OceanSubCategoriesState extends State<OceanSubCategories> {
  final List<String> subCatIcon = [
    "icon_ocean_gentle_waves",
    "icon_ocean_waves",
    "icon_ocean_seagulls",
    "icon_ocean_scuba_diver",
    "icon_ocean_dolphin",
    "icon_ocean_sailboat",
    "icon_ocean_whale"
  ];

  final List<String> subCatTitle = [
    "Calm waves",
    "Waves",
    "Seagulls",
    "Scuba diver",
    "Dolphins",
    "Sailboat",
    "Whale",
  ];

  final List<String> subCatSound = [
    "sounds/ocean_calm_waves.ogg",
    "sounds/ocean_waves.ogg",
    "sounds/ocean_seagulls.ogg",
    "sounds/ocean_diver.ogg",
    "sounds/ocean_dolphins.ogg",
    "sounds/ocean_sailboat.ogg",
    "sounds/ocean_whale.ogg"
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
