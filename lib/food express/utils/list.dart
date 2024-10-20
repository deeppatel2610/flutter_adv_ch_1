import 'package:flutter/material.dart';

List<Widget> screensList = [
  containerMethod(
    text2: 'Lorem Ipsum is simply dummy text\nof the printing and typesetting',
    image: image1,
    text1: 'Prepared by experts',
  ),
  containerMethod(
    text2: 'Lorem Ipsum is simply dummy text\nof the printing and typesetting',
    image: image2,
    text1: 'Delivery to your home',
  ),
  containerMethod(
    text2: 'Lorem Ipsum is simply dummy text\nof the printing and typesetting',
    image: image3,
    text1: 'Enjoy with everyone',
  ),
];

Container containerMethod(
    {required String image, required String text1, required String text2}) {
  return Container(
    height: 550,
    width: double.infinity,
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          text1,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 23,
              letterSpacing: 1),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text2,
          style: const TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

// image
String image1 = "assets/image/image-1.png";
String image2 = "assets/image/image-2.png";
String image3 = "assets/image/image-3.png";
