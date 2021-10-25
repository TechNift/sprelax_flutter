import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RainSubCategories extends StatefulWidget {
  @override
  _RainSubCategoriesState createState() => _RainSubCategoriesState();
}

class _RainSubCategoriesState extends State<RainSubCategories> {
  final List<String> subCatIcon = [
    "icon_rain_morning",
    "icon_rain_umbrella",
    "icon_rain_thunders",
    "icon_rain_light",
    "icon_rain_heavy",
    "icon_rain_distant_thunder",
    "icon_rain_tent",
    "icon_rain_window",
    "icon_rain_roof"
  ];

  final List<String> subCatTitle = [
    "Morning rain",
    "Umbrella",
    "Thunder",
    "Light rain",
    "Heavy rain",
    "Distant thunder",
    "Tent",
    "Window",
    "Roof"
  ];

  final List<String> subCatSound = [
    "sounds/rain_morning_rain.ogg",
    "sounds/rain_umbrella.ogg",
    "sounds/rain_thunders.ogg",
    "sounds/rain_light.ogg",
    "sounds/rain_heavy.ogg",
    "sounds/rain_distant_thunder.ogg",
    "sounds/rain_tent.ogg",
    "sounds/rain_window.ogg",
    "sounds/rain_roof.ogg"
  ];

  AudioCache audioPlayer = AudioCache();

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
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
              });
            },
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: selected ? Colors.blue : Colors.black54, borderRadius: BorderRadius.circular(30)),
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
