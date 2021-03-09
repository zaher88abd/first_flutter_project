import "package:flutter/material.dart";
import './quize.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  final questions = const [
    {
      "questionText": "What is your color?",
      "answers": ["Red", "Blue", "Green", "Brown"]
    },
    {
      "questionText": "What do you live?",
      "answers": ["Canada", "USA", "Syria", "Eygpt"]
    },
    {
      "questionText": "What is your favurate fruit",
      "answers": ["Apple", "Grap", "GreenApple", "Orange"]
    }
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Center(
                child: Text("Done questions !"),
              ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }
}
