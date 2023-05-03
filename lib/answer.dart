import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});

  // final Function() selectHandler;
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
