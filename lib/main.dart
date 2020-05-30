import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _totalPoints;
  final _results = [
    "Muy bien! has acertado todas las respuestas",
    "Has hecho un buen trabajo!",
    "Has fallado todas las respuestas, mas suerte la proxima"
  ];
  final _questions = [
    {
      "questionText": "Cual es tu color favorito?",
      "answers": [
        {"text": "Rojo", "valor": 10},
        {"text": "Blanco", "valor": 0},
        {"text": "Verde", "valor": 0},
        {"text": "Crema", "valor": 0},
      ]
    },
    {
      "questionText": "Cual es tu animal favorito?",
      "answers": [
        {"text": "Perro", "valor": 0},
        {"text": "Caballo", "valor": 0},
        {"text": "Gorila", "valor": 0},
        {"text": "Leon", "valor": 10}
      ]
    },
    {
      "questionText": "Cual es tu jugador de baloncesto favorito?",
      "answers": [
        {"text": "Michael Jordan", "valor": 0},
        {"text": "LeBron James", "valor": 10},
        {"text": "Kobe Bryant", "valor": 0},
        {"text": "Shaquille O'neal", "valor": 0}
      ]
    },
  ];
  var _questionIndex = 0;
  void _buttonPressed(int points) {
    setState(() {
      _questionIndex++;
    });
    _totalPoints += points;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: _questionIndex < _questions.length
              ? Quiz(_questions[_questionIndex], _buttonPressed)
              : Result(_results, _totalPoints),
        ),
      ),
    );
  }
}
