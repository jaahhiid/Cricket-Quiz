import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);
  final int resultScore;

  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 3) {
      resultText =
          'Your Score is $resultScore and You Know nothing about Cricket';
    } else if (resultScore <= 5) {
      resultText =
          'Your Score is $resultScore and You Know something about Cricket';
    } else if (resultScore <= 7) {
      resultText =
          'Your Score is $resultScore and You Know better about Cricket';
    } else {
      resultText =
          'Your Score is $resultScore and You Know almost all about Cricket';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
