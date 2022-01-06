// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    //TODO: implement createState;
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Blue Whale', 'score': 3},
        {'text': 'Lion', 'score': 11},
        {'text': 'Peacock', 'score': 5},
        {'text': 'Snake', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Min', 'score': 1},
        {'text': 'Min', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more Questions');
    } else {
      print('No More Questions');
    }
    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
