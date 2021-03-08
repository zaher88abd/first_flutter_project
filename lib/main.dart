import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = ["What is your color?", "What is your cuntry"];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text("Answer1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer3"),
              onPressed: () => print("Chose answer  3"),
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }
}
