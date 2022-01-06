import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    // ignore: prefer_typing_uninitialized_variables
    var resultText;
    if (resultScore <= 0) {
      resultText = 'You are innocent.';
    } else if (resultScore <= 12) {
      resultText = 'You are good!';
    } else if (resultScore <= 16) {
      resultText = 'You arae Stronger';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: resetHandler, child: const Text('Restart Quiz!')),
        ],
      ),
    );
  }
}
