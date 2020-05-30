import 'Package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;
  final String text;

  Answer(this.clickHandler, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        onPressed: clickHandler,
        textColor: Colors.white,
        color: Colors.red,
      ),
    );
  }
}
