import 'package:flutter/material.dart';

class RiverSubCategories extends StatelessWidget {
  final List<String> subCatIcon = [
    "icon_water_river",
    "icon_water_brook",
    "icon_water_creek",
    "icon_water_waterfall",
  ];

  final List<String> subCatTitle = [
    "River",
    "Brook",
    "Creek",
    "Waterfall",
  ];

  final List<String> subCatSound = [
    "sounds/water_river.ogg",
    "sounds/water_brook.ogg",
    "sounds/water_creek.ogg",
    "sounds/water_waterfall.ogg"
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
