// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int notNumber) {
    final player = AudioCache();
    player.play('note$notNumber.wav');
  }

  Expanded buildKey({Color color = Colors.black, int soundNumber = 1}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text(
            'PIANO',
            style: TextStyle(
                color: Colors.white24,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black87,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.teal, soundNumber: 5),
                buildKey(color: Colors.blue, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
