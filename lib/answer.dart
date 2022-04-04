import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child:RaisedButton(
          color: Colors.blueAccent,
            textColor: Colors.white,
            child: Text(answerText),
            onPressed: selectHandler,
        ),
    );
  }
}
