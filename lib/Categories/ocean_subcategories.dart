import 'package:flutter/material.dart';

class OceanSubCategories extends StatelessWidget {
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
    "Whale"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
          itemCount: subCatIcon.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: .7),
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
