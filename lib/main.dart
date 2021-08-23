import 'package:flutter/material.dart';
import 'package:quizapp/answers.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/qust.dart';
import 'package:quizapp/result.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, title: "Quizapp", home: Quizapp()));
}

class Quizapp extends StatefulWidget {
  @override
  _QuizappState createState() => _QuizappState();
}

class _QuizappState extends State<Quizapp> {
  var quesindex = 0;
  var totalscore = 0;
  void resetquiz() {
    setState(() {
      quesindex = 0;
      totalscore = 0;
    });
  }

  final questions = const [
    {
      'questiontext': "what is your favourite color",
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 7},
        {'text': 'blue', 'score': 5},
      ],
    },
    {
      'questiontext': "what is your favourite animal",
      'answer': [
        {'text': 'elephant', 'score': 10},
        {'text': 'cat', 'score': 6},
        {'text': 'dog', 'score': 4},
      ],
    },
    {
      'questiontext': "who is your favorite cricketar",
      'answer': [
        {'text': 'virat', 'score': 10},
        {'text': 'dhoni', 'score': 10},
        {'text': 'sachin', 'score': 10},
      ],
    },
  ];

  void answers(int score) {
    totalscore = totalscore + score;
    setState(() {
      quesindex = quesindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Quiz app"),
        centerTitle: true,
      ),
      body: quesindex < questions.length
          ? Quiz(questions, answers, quesindex)
          : Result(totalscore, resetquiz),
    );
  }
}
