import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftDice = 1;
  var rightDice = 1;
  void rngDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
      print('$leftDice');
      print('$rightDice');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Dice Game'),
          ),
          backgroundColor: Colors.deepPurpleAccent.shade700,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                ),
                FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.pink.shade700,
                  onPressed: () {
                    rngDice();
                  },
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent.shade400,
      ),
    );
  }
}
