import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });

    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(String url) async {
    await audioPlayer.seek(const Duration(seconds: 30));
    await audioPlayer.play(UrlSource(url));
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Playing Music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  playSound(
                      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
                },
                child: const Text("Play"),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: const Text("Pause"),
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: const Text("Stop"),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: const Text("Resume"),
              ),
              Text(
                durasi,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
