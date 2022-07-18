import 'package:firstapp/question.dart';
import "package:flutter/material.dart";
import "./answer.dart";
import "./question.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>
      question; //note that we always gets the object in place of the list
  final int questionIndex;
  final Function callme;

  Quiz(
      {required this.question,
      required this.questionIndex,
      required this.callme}); //for the null safety use required not @required

  @override
  Widget build(BuildContext context) {
    return Column(
      //ternary operator
      children: [
        //column widget in order to add multiple things in a column one after the other

        Question((question[questionIndex]['questionText'])
            .toString()), //the custom widget will be called with the data passed throught the constructor

        ...(question[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answers) {
          //...operator to add this answer list  into the widgets in column
          return Answer(() => callme(answers['score']),answers['text'].toString()); //mapping the list into the widget
        }).toList() //here the answers refer to the answers one by one
      ],
    );
  }
}
