// flutter의 matrial.dart 패키지를 import
import 'package:flutter/material.dart';

// MyApp에 작성한 코드를 실행.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Stateful & Stateless Widget Example',
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      // Counter를 홈 화면에 적용.
      home: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  // _CounterState를 생성
  _CounterState createState() => _CounterState();
}

class _CounterState extends State <Counter> {
  // 카운트 횟수를 0으로 초기화
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      // 카운트 횟수를 1씩 더함.
      _count = _count + 1;
    });
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold (
      // 스타일 정의
      appBar: AppBar (
        title: Text('Counter App'),
      ),
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text (
              'You have pushed the button this many times:',
            ),
            Text (
              // 카운트 횟수를 텍스트로 표시
              '$_count',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton (
              // 카운트 1씩 더하는 버튼
                onPressed: _incrementCounter,
                child: Text('Increment Counter')
            ),
          ],
        ),
      ),
    );
  }
}