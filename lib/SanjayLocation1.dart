import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class PocketD extends StatefulWidget {
  @override
  _PocketDState createState() => _PocketDState();
}

class _PocketDState extends State<PocketD> {
  static AudioCache player = AudioCache();
//  AudioPlayer audioPlayer = AudioPlayer();
//  AudioPlayer advancedPlayer;
  @override
  void initState() {
    super.initState();
    player.play('d.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket D',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pocket D Sarita Vihar'),
        ),
        body: Center(
          child: Text(
            'aur kasa h pratik xD',
//            'Hello Mr.Sanjay Gupta\nThis is Pocket D Geofence Example',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
