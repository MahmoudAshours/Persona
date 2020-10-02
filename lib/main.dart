import 'package:flutter/material.dart';
import 'package:persona/hacked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personna',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: HackedText(
            text: 'Hacker',
            textStyle: TextStyle(
              color: Colors.red,
              fontSize: 100,
              fontFamily: 'Hacked'
            ), 
            numberOfMilliSeconds: 60,
          ),
        ),
      ),
    );
  }
}
