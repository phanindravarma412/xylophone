import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded builtKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builtKey(color: Colors.indigo, soundNum: 1),
              builtKey(color: Colors.red, soundNum: 2),
              builtKey(color: Colors.orange, soundNum: 3),
              builtKey(color: Colors.yellow, soundNum: 4),
              builtKey(color: Colors.grey, soundNum: 5),
              builtKey(color: Colors.green, soundNum: 6),
              builtKey(color: Colors.blue, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
