import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprelax_flutter/Controller/sound_controller.dart';

class NightSubCategories extends StatefulWidget {
  @override
  _NightSubCategoriesState createState() => _NightSubCategoriesState();
}

class _NightSubCategoriesState extends State<NightSubCategories> {
  final List<String> subCatIcon = [
    "icon_nature_night_cricket",
    "icon_nature_night_grasshoppers",
    "icon_nature_night_owl",
    "icon_nature_night_wolf",
    "icon_nature_night_loons",
    "icon_nature_night_coyote",
    "icon_nature_night_coqui",
    "icon_nature_night_frog"
  ];

  final List<String> subCatTitle = [
    "Crickets",
    "Grasshoppers",
    "Owls",
    "Wolves",
    "Loon",
    "Coyote",
    "Coqui",
    "Frogs",
  ];

  final List<String> subCatSound = [
    "sounds/nature_night_crickets.ogg",
    "sounds/nature_night_grasshoppers.ogg",
    "sounds/nature_night_owls.ogg",
    "sounds/nature_night_wolves.ogg",
    "sounds/nature_night_loons.ogg",
    "sounds/nature_night_coyote.ogg",
    "sounds/nature_night_coqui.ogg",
    "sounds/nature_night_frogs.ogg"
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
