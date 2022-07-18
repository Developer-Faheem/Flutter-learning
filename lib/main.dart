import 'package:flutter/material.dart';
import './question.dart'; // use ./ for the internal files (custom widgets )
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //for creating the connection with the other class
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  //generics for creating the connection between the classes

  int _questionIndex =
      0; //underscore in  order to make the properties or the methods or classes private
      int  _totalScore=0;

void _reset(){
  setState(() {
    _totalScore=0;
    _questionIndex=0;
  });
}
  void _callthis(int score) {
     
     _totalScore+=score;

    setState(() {
      //when this methods is called it will  call the build method and the build will only render the changes
      _questionIndex = _questionIndex + 1; //enclosed by the annonymous class
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    const _question = const [
      //const to show it is both compile and run  time constant
      //this is the list of maps
      {
        'questionText': 'What is your favourite Animal',
        'answerText': [
          {'text': 'rabbit', 'score': 10},
          {'text': 'cat', 'score': 5},
          {'text': 'dog', 'score': 3}
        ]
      },
      {
        'questionText': 'What is your favourite color',
        'answerText': [
          {'text': 'red', 'score': 10},
          {'text': 'blue', 'score': 7},
          {'text': 'green', 'score': 10},
          {'text': 'yellow', 'score': 5}
        ]
      },
      {
        'questionText': 'What is your favourite Animal',
        'answerText': [
          {'text': 'rabbit', 'score': 10},
          {'text': 'cat', 'score': 5},
          {'text': 'dog', 'score': 3}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My  App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                callme: _callthis,
                question: _question,
                questionIndex: _questionIndex)
            : Result(_totalScore,_reset),
      ),
    );
  }
}
