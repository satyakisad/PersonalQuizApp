

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String q;

  Question(this.q);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      child: Text(
        q,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
