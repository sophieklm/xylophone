import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey({Color color, String sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
        onLongPress: () {
          playSound('sweep');
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, sound: '1'),
                buildKey(color: Colors.orange, sound: '2'),
                buildKey(color: Colors.yellow, sound: '3'),
                buildKey(color: Colors.green, sound: '4'),
                buildKey(color: Colors.teal, sound: '5'),
                buildKey(color: Colors.blue, sound: '6'),
                buildKey(color: Colors.deepPurple, sound: '7'),
                buildKey(color: Colors.purple, sound: '8'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
