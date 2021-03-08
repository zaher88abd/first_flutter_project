import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  final String buttonText;

  Answer(this.buttonText, this.selectedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(this.buttonText),
        onPressed: this.selectedHandler,
      ),
    );
  }
}
