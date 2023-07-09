import 'package:flutter/material.dart';

void main() {
  runApp(Week1Assignment());
}

class Week1Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'My Profile',
              textAlign: TextAlign.center,
          ),
        ),
        body: Padding (
          //컴포넌트들이 들어갈 부분이 좌우여백 100px.
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Center (
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //프로필 사진
                  Image.asset(
                      'cookie.png',
                      width: 200,
                      height: 200),
                  Text('Minjeong Kim',
                    style:
                      TextStyle (
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Text('University Student',
                    style:
                      TextStyle(
                        color: Colors.black38,
                      )
                  ),
                  // 자기소개는 왼쪽 정렬
                  Align (
                      alignment: Alignment.centerLeft,
                      child: Padding (
                        padding: EdgeInsets.only(top: 20.0),
                          child: Text (
                              'Hi, I am Minjeong Kim. And this is the first time I am working with flutter. I am studying Russian Language and Software in HUFS, an university in Seoul. Nowadays I am interested in data-driven services and NLP.',
                              textAlign: TextAlign.left,
                          ),
                      ),
                  ),
                  // 취미 부분은 다시 중앙 배치.
                  // 아이콘과 텍스트를 Row 형태로 배치.
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Icon(
                            Icons.book,
                            size: 30,
                            color: Colors.black38,
                          ),
                          Text (
                              'Reading Books',
                              style: TextStyle (
                                color: Colors.black,
                              )
                          ),
                        ],
                      )
                  )
                ],
          ),
      ),
    ),
  ),
    );
  }
}