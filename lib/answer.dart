import "package:flutter/material.dart";

class Answer extends StatelessWidget{
   var selectHandler;
   final String answerText;//it is run time costant as its value get fixed when the parameter is passed actually
 
  Answer(this.selectHandler,this.answerText);

  Widget build(BuildContext context){

    return Container(

      width:double.infinity,
      child:  RaisedButton(
            color:Colors.blue,//accessing the static and constant property of the color class without instantiation
            textColor: Colors.white,
            child: Text(answerText),
            onPressed: selectHandler,//call back to the function in the main class 
          ),
      
    );
  }
}