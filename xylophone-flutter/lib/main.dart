import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
              MaterialButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
              MaterialButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
              ),
              MaterialButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(5);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
              ),
              MaterialButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
