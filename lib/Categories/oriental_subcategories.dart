import 'package:flutter/material.dart';

class OrientalSubCategories extends StatelessWidget {
  final List<String> subCatIcon = [
    "icon_oriental_bowl",
    "icon_oriental_gong",
    "icon_oriental_bell",
    "icon_oriental_om",
    "icon_oriental_flute",
    "icon_oriental_didgeridoo",
    "icon_oriental_chimes",
    "icon_oriental_string"
  ];

  final List<String> subCatTitle = [
    "Bowls",
    "Gong",
    "Bells",
    "Om",
    "Flute",
    "Didgeridoo",
    "Chimes",
    "Guzheng",
  ];

  final List<String> subCatSound = [
    "sounds/oriental_bowls.ogg",
    "sounds/oriental_gong.ogg",
    "sounds/oriental_bells.ogg",
    "sounds/oriental_om.ogg",
    "sounds/oriental_flute.ogg",
    "sounds/oriental_didgeridoo.ogg",
    "sounds/oriental_chimes.ogg",
    "sounds/oriental_string.ogg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
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
