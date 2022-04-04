import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp( MyApp());


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({Key? key}) : super(key: key);
  var _questionIndex=0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _totalScore=0;
      _questionIndex=0;
    });

  }

  void _answerQuestion(int score){
    _totalScore+=score;
    setState(() {
      _questionIndex=(_questionIndex+1);
    });
    print(_questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const _questions = [
      {"questionText": "what is your name?",
        "answers":[{"text":"abhay", "score": 10}, {"text":"tanay", "score": 7}, {"text":"ghiney", "score": 5}]
      },
      {
       "questionText": "what is your father name?",
        "answers":[{"text":"abhay", "score": 10}, {"text":"tanay", "score": 7}, {"text":"ghiney", "score": 5}]
      },
      {
       "questionText": "what is your  monther name?",
        "answers":[{"text":"abhay", "score": 10}, {"text":"tanay", "score": 7}, {"text":"ghiney", "score": 5}]
        },
        {
          "questionText": "what is your sister name?",
          "answers":[{"text":"abhay", "score": 10}, {"text":"tanay", "score": 7}, {"text":"ghiney", "score": 5}]
        },
        ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex<_questions.length?
              Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
