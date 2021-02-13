import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class LeftDice extends StatefulWidget {
  @override
  _LeftDiceState createState() => _LeftDiceState();
}

class _LeftDiceState extends State<LeftDice> {
  int leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            leftDiceNumber = Random().nextInt(6) + 1;
          });
        },
        child: Image.asset('assets/dice$leftDiceNumber.png'),
      ),
    );
  }
}

class RightDice extends StatefulWidget {
  @override
  _RightDiceState createState() => _RightDiceState();
}

class _RightDiceState extends State<RightDice> {
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            rightDiceNumber = Random().nextInt(6) + 1;
          });
        },
        child: Image.asset('assets/dice$rightDiceNumber.png'),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftDice(),
          RightDice(),
        ],
      ),
    );
  }
}
