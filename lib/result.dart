import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String res;
    res='You score was!'+resultScore.toString();
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
          resultPhrase,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetHandler,
              child: Text('restart quiz'),
          textColor: Colors.blue,)
        ],
      ),
    );
  }
}
