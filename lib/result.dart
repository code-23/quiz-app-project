import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totscore;
  final void Function() rest;

  Result(this.totscore, this.rest);
  String get resultphrase {
    String resultt;
    if (totscore == 30) {
      resultt = 'you are awesome buddy';
    } else if (totscore >= 23) {
      resultt = 'you are good';
    } else {
      resultt = 'You are not good';
    }
    return resultt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        SizedBox(height: 200.0),
        Text(
          "According to your score your personality is that $resultphrase",
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 300.0),
        ElevatedButton(onPressed: rest, child: Text("Restart Quiz"))
      ],
    ));
  }
}
