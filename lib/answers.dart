import 'package:flutter/material.dart';
import 'package:quizapp/qust.dart';

class Answers extends StatelessWidget {
  final void Function() SelectHandler;
  final String ds;
  Answers(this.SelectHandler, this.ds);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: SelectHandler,
        child: Text(ds),
      ),
    );
  }
}
