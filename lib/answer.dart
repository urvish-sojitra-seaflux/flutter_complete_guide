// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final String answerText;
  final VoidCallback selectHandler;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(child: Text(answerText), onPressed: selectHandler),
    );
  }
}
