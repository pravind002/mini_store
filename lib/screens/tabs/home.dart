import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Hometab extends StatelessWidget {
  const Hometab({Key? key}) : super(key: key);

  // double _scale = 1.0;
  //double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 200,
                autoPlay: true,
                // autoPlayInterval: Duration(milliseconds: 300),
                autoPlayAnimationDuration: const Duration(milliseconds: 300)),
            items: [
              "assets/images/chocolate.jpg",
              "assets/images/extra.jpg",
              "assets/images/giftpack.jpg",
              "assets/images/dairymilk.jpg",
            ].map((img) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(img);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
