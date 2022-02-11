import 'package:flutter/material.dart';

import './quiz.dart';
import './results.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int c = 0;
  int total=0;
  var correctanswers = [
    [true, false, false, false],
    [true, false, false, true],
    [false, true, false, false],
    [true, false, false, false],
    [true, false, true, false],
    [true, true, true, false],
  ];
  void func(int num) {
    total+=correctanswers[c][num]==true?1:0;
    setState(() {
      
      c++;
      
    });
    

    print(total);
  }
void reset()
{
  setState(() {
    c=0;
    total=0;
  });
}
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Do you Know Me?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: c <= 5
            ? Quiz(func,c)
            : Results(total,reset),
        backgroundColor: Colors.white,
      ),
    );
  }
}
