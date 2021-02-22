import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String sound}) {
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: color,
        child: Text(
          sound,
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, sound: 'A'),
              buildKey(color: Colors.orange, soundNumber: 2, sound: 'B'),
              buildKey(color: Colors.yellow, soundNumber: 3, sound: 'C'),
              buildKey(color: Colors.green, soundNumber: 4, sound: 'D'),
              buildKey(color: Colors.teal, soundNumber: 5, sound: 'E'),
              buildKey(color: Colors.blue, soundNumber: 6, sound: 'F'),
              buildKey(color: Colors.purple, soundNumber: 7, sound: 'G'),
            ],
          ),
        ),
      ),
    );
  }
}
