import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprelax_flutter/Controller/sound_controller.dart';

class RelaxingSubCategories extends StatefulWidget {
  @override
  _RelaxingSubCategoriesState createState() => _RelaxingSubCategoriesState();
}

class _RelaxingSubCategoriesState extends State<RelaxingSubCategories> {
  final List<String> subCatIcon = [
    "icon_music_piano",
    "icon_music_guitar",
    "icon_music_violin",
    "icon_music_harp",
    "icon_music_flute",
    "icon_music_sax",
    "icon_music_native"
  ];

  final List<String> subCatTitle = [
    "Piano",
    "Guitar",
    "Violin",
    "Harp",
    "Flute",
    "Sax",
    "Native Am.",
  ];

  final List<String> subCatSound = [
    "sounds/music_piano.ogg",
    "sounds/music_guitar.ogg",
    "sounds/music_violin.ogg",
    "sounds/music_harp.ogg",
    "sounds/music_flute.ogg",
    "sounds/music_sax.ogg",
    "sounds/music_native.ogg"
  ];

  AudioCache audioPlayer = AudioCache();

  bool selected = false;

  Sounds _sounds = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
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
                  decoration: BoxDecoration(color: _sounds.id == i ? Colors.blueAccent : Colors.black54, borderRadius: BorderRadius.circular(30)),
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
