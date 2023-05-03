import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(Jahid());
}

// void main() => runApp(Jahid());

class Jahid extends StatefulWidget {
  @override
  State<Jahid> createState() => _JahidState();
}

class _JahidState extends State<Jahid> {
  final _questions = const [
    {
      'questionText':
          'A is for Ashes. The test matches played between two nations are referred to as The Ashes. Which are these two teams?',
      'answers': [
        {'text': 'England and West Indies', 'score': 0},
        {'text': 'India and Pakistan', 'score': 0},
        {'text': 'England and Australia', 'score': 1},
        {'text': 'Australia and New Zealand', 'score': 0}
      ],
    },
    {
      'questionText':
          'B is for Bails, as essential as the stumps, bat and ball. How many bails are required to be used in a game of cricket?',
      'answers': [
        {'text': '10', 'score': 0},
        {'text': '2', 'score': 0},
        {'text': '4', 'score': 1},
        {'text': '1', 'score': 0},
      ],
    },
    {
      'questionText': 'C is for Chin music. What is chin music in cricket?',
      'answers': [
        {'text': 'Dancing during the drinks break', 'score': 0},
        {'text': 'Bouncers bowled at a batsman', 'score': 1},
        {'text': 'Hitting the bowler on his chin', 'score': 0},
        {'text': 'Hitting the bowler on his chin', 'score': 0},
      ],
    },
    {
      'questionText':
          'D is for Declare. What does it mean when a captain declares?',
      'answers': [
        {'text': 'He is calling for a substitute player', 'score': 0},
        {'text': 'He is announcing his team composition', 'score': 0},
        {'text': 'He is closing his team\'s innings', 'score': 1},
        {'text': 'He is announcing his retirement', 'score': 0},
      ],
    },
    {
      'questionText':
          'E is for Extra. Which of the following is NOT considered as an extra run in cricket?',
      'answers': [
        {'text': 'Short run', 'score': 1},
        {'text': 'No Ball', 'score': 0},
        {'text': 'Wide', 'score': 0},
        {'text': 'Leg Bye', 'score': 0},
      ],
    },
    {
      'questionText': 'F is for Flight. In cricket what does this term mean?',
      'answers': [
        {'text': 'The ball sailing over the boundary', 'score': 0},
        {'text': 'eams flying home after defeat', 'score': 0},
        {'text': 'Trajectory of a ball bowled by a bowler', 'score': 1},
        {'text': 'A batsman running away from a fast bowle', 'score': 0},
      ],
    },
    {
      'questionText': 'G is for Groundsman. Who is a groundsman in cricket?',
      'answers': [
        {'text': 'The gatekeeper', 'score': 0},
        {'text': 'The third umpire', 'score': 0},
        {'text': 'The ticket seller', 'score': 0},
        {'text': 'The curator of the pitch', 'score': 1},
      ],
    },
    {
      'questionText':
          'H is for Hawk Eye, a technology used in cricket. For what purpose is this technology used?',
      'answers': [
        {'text': 'For run outs', 'score': 0},
        {'text': 'For leg before decisions', 'score': 1},
        {'text': 'For stumpings', 'score': 0},
        {'text': 'For catches', 'score': 0},
      ],
    },
    {
      'questionText':
          'I is for Innings. What is the duration of an innings in a test match?',
      'answers': [
        {'text': 'No limit', 'score': 1},
        {'text': '75 overs', 'score': 0},
        {'text': '50 overs', 'score': 0},
        {'text': '200 overs', 'score': 0},
      ],
    },
    {
      'questionText':
          'J is for Jab. When a batsman jabs at a ball, which of the following best describes this term?',
      'answers': [
        {'text': 'Batsman leaves the ball alone', 'score': 0},
        {'text': 'Batsman attempts to push the ball', 'score': 1},
        {'text': 'Batsman plays the ball with his hands', 'score': 0},
        {'text': 'Batsman plays the ball with his pads', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More Questions to come');
    } else {
      print('No more Question!');
    }
    // print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Cricket Quiz App')),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
