import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List<String> results;
  final int totalPoints;

  Result(this.results, this.totalPoints);

  String get resultPhrase {
    if (totalPoints == 30) {
      return results[0];
    } else if (totalPoints > 0 && totalPoints < 30) {
      return results[1];
    } else {
      return results[2];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
