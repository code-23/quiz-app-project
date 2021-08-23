import 'package:flutter/material.dart';
import 'package:quizapp/answers.dart';
import 'package:quizapp/qust.dart';

class Quiz extends StatelessWidget {
  final int quesindex;
  final questions;
  final Function answer;
  Quiz(@required this.questions, @required this.answer,
      @required this.quesindex);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0),
        Center(
          child: Text(
            "The questions!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Question((questions[quesindex]['questiontext'] as String)),
        SizedBox(height: 10.0),
        ...(questions[quesindex]['answer'] as List<Map<String, Object>>)
            .map((ans) {
          return Answers(() => answer(ans['score']), ans['text'] as String);
        }).toList(),
        SizedBox(height: 10.0),
        SizedBox(height: 10.0),
      ],
    );
  }
}
