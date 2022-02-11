import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final Function func;
  int c;
 var questions = [
      "What is my favourite food?",
      "What is my favourite sport/esport?",
      "What is my Dream place to go?",
      "What is my biggest fear?",
      "What is my favourite band?",
      "Who is the sexiest guy in the world?"
      
    ];
    var answers=[
      ["Pizza","Burger","Biriyani","Dosa"],
      ["Cricket","CS:GO","Valorant","Football"],
      ["Spain","France","England","USA"],
      ["Water","Fire","Height","All of the Above"],
      ["Opeth","Tool","Porcupine Tree","Metallica"],
      ["Satyaki","SATYAKI","Das, Satyaki","Someone else"]
    ];
Quiz(this.func,this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
                children: [
                  Question(questions[c]),
                  Answer(()=>func(0), answers[c][0]),
                  Answer(()=>func(1), answers[c][1]),
                  Answer(()=>func(2), answers[c][2]),
                  Answer(()=>func(3), answers[c][3]),
                ],
              )
      
    );
  }
}