import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ParisCarousel extends StatelessWidget {
  // 파리에 해당하는 여러 이미지 경로를 리스트로 정의
  final List<String> parisImages = [
    'assets/image/elemental1.jpeg',
    'assets/image/elemental2.jpeg',
    'assets/image/elemental3.jpeg',
    'assets/image/elemental4.jpeg',
    'assets/image/elemental5.jpeg',
    // 여기에 더 많은 영화 이미지 경로 추가
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: parisImages.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 1000,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: ClipRect(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}





