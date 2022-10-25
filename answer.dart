import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;
  final String ansText;

  Answer(this.selectHandeler, this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(ansText),
        onPressed: selectHandeler,
      ),
    );
  }
}
