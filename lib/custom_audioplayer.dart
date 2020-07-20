import 'package:audioplayers/audio_cache.dart';

enum PlayerState { stopped, playing, paused }

typedef void OnError(Exception exception);

class AudioApp {
  Duration duration;
  Duration position;

  AudioCache audioPlayer;

  AudioApp() {
    audioPlayer = AudioCache();
  }

  PlayerState playerState = PlayerState.stopped;

  get isPlaying => playerState == PlayerState.playing;
  get isPaused => playerState == PlayerState.paused;

  Future play(String sound) async {
    await audioPlayer.play(sound + ".mp3");
    playerState = PlayerState.playing;
  }

  void onComplete() {
    playerState = PlayerState.stopped;
  }
}
