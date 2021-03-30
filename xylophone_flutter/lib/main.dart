import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    // final player = AudioCache();
    // player.play('note$soundNumber.wav');
    print('Key Pressed $soundNumber');
  }

  Expanded buildKeys({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeys(color: Colors.red, soundNumber: 1),
              buildKeys(color: Colors.orange, soundNumber: 2),
              buildKeys(color: Colors.yellow, soundNumber: 3),
              buildKeys(color: Colors.green, soundNumber: 4),
              buildKeys(color: Colors.blue, soundNumber: 5),
              buildKeys(color: Colors.purple, soundNumber: 6),
              buildKeys(color: Colors.indigo, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
