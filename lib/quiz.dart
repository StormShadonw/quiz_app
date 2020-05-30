import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final Map scene;

  final Function clickHandler;

  Quiz(this.scene, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(scene["questionText"]),
        ...(scene["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => clickHandler(answer["valor"]), answer["text"]);
        })
      ],
    );
  }
}
