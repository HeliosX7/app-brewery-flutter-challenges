import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  changeDiceNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: changeDiceNumbers,
                  child: Image.asset('assets/dice$leftDiceNumber.png')),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: FlatButton(
                  onPressed: changeDiceNumbers,
                  child: Image.asset('assets/dice$rightDiceNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
