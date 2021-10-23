import 'package:flutter/material.dart';

class HomeSubCategories extends StatelessWidget {
  final List<String> subCatIcon = [
    "icon_home_fan",
    "icon_home_air_conditioner",
    "icon_home_hairdryer",
    "icon_home_vacuum_cleaner",
    "icon_home_cat_purring",
    "icon_home_shower",
    "icon_home_washing_machine",
    "icon_home_jacuzzi",
    "icon_home_fridge",
    "icon_home_clock",
  ];

  final List<String> subCatTitle = [
    "Fan",
    "Air Conditioner",
    "Hairdryer",
    "Vacuum cleaner",
    "Cat purring",
    "Shower",
    "Washing machine",
    "Jacuzzi",
    "Fridge",
    "Vintage Clock",
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
