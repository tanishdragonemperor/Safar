import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class PocketE extends StatefulWidget {
  @override
  _PocketEState createState() => _PocketEState();
}

class _PocketEState extends State<PocketE> {
  static AudioCache player = AudioCache();
//  AudioPlayer audioPlayer = AudioPlayer();
//  AudioPlayer advancedPlayer;
  @override
  void initState() {
    super.initState();
    player.play('e.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pocket E',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pocket E Sarita Vihar'),
        ),
        body: Center(
          child: Text(
            "Welcome pratik",
//            'Hello Mr.Sanjay Gupta\nThis is Pocket E Geofence Example',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
