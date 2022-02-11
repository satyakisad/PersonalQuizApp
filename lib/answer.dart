import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String txt;
  Answer(this.selectHandler,this.txt);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  300,
     child: ElevatedButton(

          onPressed: selectHandler,
            child: Text(txt),
          ),
    );
  }
}