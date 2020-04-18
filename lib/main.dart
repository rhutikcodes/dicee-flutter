import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNumber = 1;
  int rightButtonNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftButtonNumber.png'),
              onPressed: () {
                changeDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightButtonNumber.png'),
              onPressed: () {
                changeDice();
              },
            ),
          ),
        ],
      ),
    );
  }

  void changeDice() {
    setState(() {
      leftButtonNumber = Random().nextInt(6) + 1;
      rightButtonNumber = Random().nextInt(6) + 1;
    });
  }
}

