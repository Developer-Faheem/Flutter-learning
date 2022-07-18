import 'package:flutter/material.dart';
import './question.dart'; // use ./ for the internal files (custom widgets )
import './answer.dart';

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

  void _callthis() {
    setState(() {
      //when this methods is called it will  call the build method and the build will only render the changes
      _questionIndex = _questionIndex + 1; //enclosed by the annonymous class
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    const question =const[//const to show it is both compile and run  time constant
      //this is the list of maps
      {
        'questionText': 'What is your favourite Animal',
        'answerText': ['rabbit', 'cat', 'dog']
      },
      {
        'questionText': 'What is your favourite color',
        'answerText': ['red', 'blue', 'green','yellow']
      },
      {
        'questionText': 'What is your favourite Animal',
        'answerText': ['rabbit', 'cat', 'dog']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My  App'),
        ),
        body:
          _questionIndex<question.length? Column(//ternary operator
          children: [
            //column widget in order to add multiple things in a column one after the other

            Question((question[_questionIndex]['questionText'])
                .toString()), //the custom widget will be called with the data passed throught the constructor

            ...(question[_questionIndex]['answerText'] as List<String>)
                .map((answers) {
              //...operator to add this answer list  into the widgets in column
              return Answer(
                  _callthis, answers); //mapping the list into the widget
            }).toList() //here the answers refer to the answers one by one
          ],
        ): Center(child: Text('you did it!'),),
      ),
    );
  }
} 
