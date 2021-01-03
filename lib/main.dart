import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache(
    prefix: 'assets/',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                getNoteWidget(Colors.red, 1),
                getNoteWidget(Colors.orange, 2),
                getNoteWidget(Colors.yellow, 3),
                getNoteWidget(Colors.green, 4),
                getNoteWidget(Colors.teal, 5),
                getNoteWidget(Colors.blue, 6),
                getNoteWidget(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded getNoteWidget(Color color, int soundNum) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          player.play('note$soundNum.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
