import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './main.dart';

class Quiz extends StatelessWidget {
  // const MyWidget({super.key});

  int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz({this.answerQuestion, this.questions, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // questions.elementAt(1),
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
