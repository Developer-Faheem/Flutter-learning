import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  var resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //special function to get the values and it does not accept any parameters so dont use ()

    if (resultScore < 7) {
      return "you are bad guy";
    } else if (resultScore < 15) {
      return "you are pretty good ";
    } else {
      return "you are the best ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        RaisedButton(child: Text("Reset Quiz! "), onPressed: resetHandler),
      ]),
    );
  }
}
