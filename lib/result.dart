import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    switch (resultScore) {
      case <= 8:
        resultText = 'You are awesome and innocent!';
        break;
      case <= 12:
        resultText = 'Pretty likable!';
        break;
      case <= 16:
        resultText = 'You are strange!';
        break;
      default:
        resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
