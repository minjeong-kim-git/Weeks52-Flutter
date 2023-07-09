import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp (
      home: Scaffold (
        appBar: AppBar (
          title: Text('Basic Widgets Example'),
        ),
        body: Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text ('Hello, World!'),
              Image.asset('summer.jpg'),
              Icon(Icons.star),
            ],
          ),
        ),
      ),
    );
  }
}