import 'package:flutter/material.dart'; //firstly we import the packages and then other classes

class Question extends StatelessWidget {
  final String
      questionText; // we make this final as the data does not change internally in the statelessWidget
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, //will make the container taking the size according to available width and child to set accordingly
      margin: EdgeInsets.all(15), //multiple constructors
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Colors.black),
        textAlign: TextAlign.center, //this is the enum
      ),
    );
  }
}
