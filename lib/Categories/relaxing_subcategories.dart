import 'package:flutter/material.dart';

class RelaxingSubCategories extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      itemCount: subCatIcon.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: .7),
      itemBuilder: (BuildContext context, i) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(30)),
                child: Center(child: Image.asset("images/icons/${subCatIcon[i]}.png", height: 30, width: 30)),
              ),
              SizedBox(height: 10),
              Text(subCatTitle[i], textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          ),
        );
      },
    ));
  }
}
