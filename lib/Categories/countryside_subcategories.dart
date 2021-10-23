import 'package:flutter/material.dart';

class CountrySideSubCat extends StatelessWidget {
  final List<String> subCatIcon = [
    "icon_nature_day_birds",
    "icon_nature_day_crow",
    "icon_nature_day_farm",
    "icon_nature_day_cowbells",
    "icon_nature_day_sheep",
    "icon_nature_day_horse",
    "icon_nature_day_eagle",
    "icon_nature_day_turtledove",
    "icon_nature_day_cicadas",
    "icon_nature_day_train"
  ];

  final List<String> subCatTitle = [
    "Black birds",
    "Crows",
    "Farm",
    "Cowbells",
    "Sheep",
    "Horse",
    "Eagle",
    "Turtledove",
    "Cicadas",
    "Train horn"
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
