import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz () {
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'what is your favorite color? ',
        'answers': [
          {'text': 'Red', 'score': 1},
          {'text': 'Green', 'score': 5},
          {'text': 'Blue', 'score': 1},
          {'text': 'White', 'score': 15}
        ]
      },
      {
        'questionText': 'what is your favorite animal ?  ',
        'answers': [
          {'text': 'Bird', 'score': 1},
          {'text': 'Dog', 'score': 10},
          {'text': 'Lion', 'score': 9},
          {'text': 'Leopard', 'score': 3}
        ]
      },
      {
        'questionText': 'who is your favorite instructor ?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Jaque', 'score': 3},
          {'text': 'Dyary', 'score': 21},
          {'text': 'Ali', 'score': 9}
        ]
      },
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('hello world'),
            ),
            body: _questionIndex < questions.length
                ? Quiz(
                    questions: questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion)
                :  Result(_totalScore, resetQuiz: _resetQuiz)));
  }
}
