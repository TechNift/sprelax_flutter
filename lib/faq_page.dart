import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<String> faqImage = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
    "images/image5.jpg",
    "images/image6.jpg",
    "images/image7.jpg",
    "images/image8.jpg",
    "images/image9.jpg",
    "images/image10.jpg",
    "images/image11.jpg",
    "images/image12.jpg",
    "images/image13.jpg",
    "images/image14.jpg",
    "images/image15.jpg",
    "images/image16.jpg",
    "images/image17.jpg",
    "images/image18.jpg",
    "images/image19.jpg",
    "images/image20.jpg",
    "images/image21.jpg",
    "images/image22.jpg",
    "images/image23.jpg",
    "images/image24.jpg",
  ];

  final List<String> faqTitle = [
    "Sleep Better",
    "Deal with insomnia",
    "Recharge",
    "Relax",
    "Deal with Anxiety",
    "Deal with stress",
    "Manage work stress",
    "Feel Happier",
    "Deal with social Anxiety",
    "Develop Gratitude",
    "Letting Go",
    "Manage Pain",
    "Deal with Illness",
    "Learning to Meditate",
    "Age Well",
    "Healthy Pregnancy",
    "Achieving Success",
    "Parenting",
    "Loneliness",
    "Improve focus",
    "Enhance performance",
    "Self Love",
    "Manage emotions",
    "Find Purpose"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 25),
            Image.asset("images/splashIcon.png", height: 160, width: 160),
            SizedBox(),
            Text(
              "Social Plugger SP Relax",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Our goal is to help improve your health and happiness",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "How can we help you?",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Scrollbar(
                isAlwaysShown: true,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: faqImage.length,
                  itemBuilder: (BuildContext context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 100,
                          width: 500,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                faqImage[i],
                              )),
                              // color: Colors.black54,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(faqTitle[i],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                )),
                          )),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
