import 'package:flutter/material.dart';

class WindFireSubCategories extends StatelessWidget {
  final List<String> subCatIcon = [
    "icon_air_light_wind",
    "icon_air_strong_wind",
    "icon_air_wind_mountain",
    "icon_air_wind_door",
    "icon_fire_campfire",
    "icon_fire_fireplace"
  ];

  final List<String> subCatTitle = [
    "Light wind",
    "Strong wind",
    "Mountain wind",
    "Under the door",
    "Campfire",
    "Fireplace"
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
