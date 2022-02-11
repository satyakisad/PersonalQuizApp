import 'package:flutter/material.dart';



class Results extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Results(this.score,this.resetHandler);

  String get resultPhrase {
    var res="You scored $score points in this shitty quiz! \n\n\n";
    if(score==6)
    res+="You know me too well <3";
    else if(score>=4)
    res+="Okay kinda nice :)";
    else if (score>=2)
    res+= ".... Mehh, I don't like you. ";
    else
    res+="Bruh do you even know me?";
    return res+"\n\n\n";
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(onPressed: resetHandler,
          child: Text("Restart Quiz?"),),
        ],
      ),
    );
  }
}
