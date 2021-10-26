import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<String> faqImage = [
    "image1.jpg",
    "image2.jpg",
    "image3.jpg",
    "image4.jpg",
    "image5.jpg",
    "image6.jpg",
    "image7.jpg",
    "image8.jpg",
    "image9.jpg",
    "image10.jpg",
    "image11.jpg",
    "image12.jpg",
    "image13.jpg",
    "image14.jpg",
    "image15.jpg",
    "image16.jpg",
    "image17.jpg",
    "image18.jpg",
    "image19.jpg",
    "image20.jpg",
    "image21.jpg",
    "image22.jpg",
    "image23.jpg",
    "image24.jpg",
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
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Our goal is to help improve your health and happiness",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "How can we help you?",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Scrollbar(
              child: SingleChildScrollView(
                child: Container(
                    child: ListView.builder(
                  itemCount: faqImage.length,
                  itemBuilder: (BuildContext context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(faqImage[i])),
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(child: Text(faqTitle[i])),
                          ),
                        ],
                      ),
                    );
                  },
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
