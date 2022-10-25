import 'package:day_1/quiz.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is your favourit color',
      'answer': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 4},
      ],
    },
    {
      'question': 'What is your favourit fruit',
      'answer': [
        {'text': 'Mango', 'score': 1},
        {'text': 'Jackfrut', 'score': 2},
        {'text': 'Banana', 'score': 3},
      ],
    },
    {
      'question': 'What is your favourit food',
      'answer': [
        {'text': 'Chicken', 'score': 1},
        {'text': 'Egg', 'score': 2},
        {'text': 'Fish', 'score': 3},
      ],
    },
  ];
  var questionIndex = 0;
  int _totalScore = 0;
  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      questionIndex = questionIndex + 1;
    });
    if (questionIndex < _questions.length) {
      print('We have more questionn');
    } else {
      print('You did it');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: questionIndex,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
