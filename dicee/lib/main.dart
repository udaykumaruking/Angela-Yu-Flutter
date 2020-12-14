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
  int leftDiceVal = 1;
  int rightDiceVal = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceVal = 5;
                  rightDiceVal = 4;
                });
                // print('Left Button Got Pressed');
              },
              child: Image.asset('images/dice$leftDiceVal.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                // print('Right Button Got Pressed');
              },
              child: Image.asset('images/dice$rightDiceVal.png'),
            ),
          ),
        ],
      ),
    );
  }
}
