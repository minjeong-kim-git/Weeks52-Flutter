import 'package:flutter/material.dart';
import 'paris_carousel.dart';
import 'actor.dart';

class TravelDetailPage extends StatelessWidget {
  final String travelDestination;
  final String imageAssetPath; // 이미지 경로 저장
  final String travelDescription;
  final String genre;

  TravelDetailPage({
    required this.travelDestination,
    required this.imageAssetPath,
    required this.travelDescription,
    required this.genre,
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
              Text(
                '$genre',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '$travelDescription', // 영화 줄거리에 대한 설명 갖고 오기
                ),
              ),
              SizedBox(height: 20),
              Text(
                '출연진',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ActorGridView(),
              SizedBox(height: 20),
              Text(
                '영상/포토',
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