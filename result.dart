import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuizHandaler;

  Result(this.resultScore, this.resetQuizHandaler);

  String get getResult {
    String resultText;
    if (resultScore <= 3) {
      return resultText = 'You are aweome';
    } else if (resultScore <= 5) {
      return resultText = 'You are different';
    } else {
      return resultText = 'You are very difficult';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getResult,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Reset the quiz'),
            onPressed: resetQuizHandaler,
          )
        ],
      ),
    );
  }
}
