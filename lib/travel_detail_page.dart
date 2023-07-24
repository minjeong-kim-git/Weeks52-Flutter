import 'package:flutter/material.dart';
import 'paris_carousel.dart';

class TravelDetailPage extends StatelessWidget {
  final String travelDestination;
  final String imageAssetPath; // 이미지 경로 저장
  final String travelDescription;

  TravelDetailPage({
    required this.travelDestination,
    required this.imageAssetPath,
    required this.travelDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: SingleChildScrollView( // SingleChildScrollView로 감싸기
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageAssetPath, // 이미지 경로
                fit: BoxFit.cover, // 이미지를 화면에 꽉 채움
              ),
              SizedBox(height: 20),
              Text(
                '$travelDestination',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '$travelDescription', // 여행지에 대한 설명 갖고 오기
                ),
              ),
              SizedBox(height: 20),
              Text(
                '테마별 여행지',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ParisCarousel(), // 파리 캐러셀 불러오기
            ],
          ),
        ),
      ),
    );
  }
}