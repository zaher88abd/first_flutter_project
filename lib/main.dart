import "package:flutter/material.dart";

import './question.dart';
import './answer.dart';

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
  var questions = [
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
            ? Column(
                children: <Widget>[
                  Question(
                    questions[questionIndex]["questionText"],
                  ),
                  ...(questions[questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    return Answer(answer, _answerQuestion);
                  }).toList()
                ],
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
