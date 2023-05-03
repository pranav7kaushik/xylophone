import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({Color? color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
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
              buildKey(color: Colors.amber[400], soundNumber: 1),
              buildKey(color: Colors.blue[400], soundNumber: 2),
              buildKey(color: Colors.deepOrange, soundNumber: 3),
              buildKey(color: Colors.deepPurple, soundNumber: 4),
              buildKey(color: Colors.green[700], soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 6),
              buildKey(color: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
