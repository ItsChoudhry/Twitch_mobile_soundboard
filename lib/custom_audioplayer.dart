import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

enum PlayerState { stopped, playing, paused }

typedef void OnError(Exception exception);

class AudioApp extends StatefulWidget {
  @override
  _AudioAppState createState() => _AudioAppState();
}

class _AudioAppState extends State<AudioApp> {
  Duration duration;
  Duration position;

  AudioCache audioPlayer;

  PlayerState playerState = PlayerState.stopped;

  get isPlaying => playerState == PlayerState.playing;
  get isPaused => playerState == PlayerState.paused;

  void initAudioPlayer() {
    audioPlayer = AudioCache();
  }

  Future play() async {
    await audioPlayer.play("");
    setState(() {
      playerState = PlayerState.playing;
    });
  }

  void onComplete() {
    setState(() => playerState = PlayerState.stopped);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AudioApp();
  }
}
