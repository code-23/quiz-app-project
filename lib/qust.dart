import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questiont;
  Question(this.questiont);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Center(
          child: Text(
        questiont!,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
