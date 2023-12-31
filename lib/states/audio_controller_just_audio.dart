import 'package:just_audio/just_audio.dart';
import 'package:audio_service/audio_service.dart';
import 'package:get/get.dart';
import 'package:BackendClientApi/api.dart';

// should be a singleton
class AudioControllerJustAudio extends GetxController {
  final AudioPlayer _audioPlayer = AudioPlayer();

  AudioControllerJustAudio() {
    // processingStateStream.listen(
    //   (event) {
    //     print("playerStateStream: $event");
    //   },
    // );

    // _audioPlayer.positionStream.listen((event) {
    //   print("positionStream: $event");
    // });

    // _audioPlayer.durationStream.listen((event) {
    //   print("durationStream: $event");
    // });
  }
  Future<void> pause() async {
    if (_audioPlayer.playing) {
      await _audioPlayer.pause();
    }
  }

  Future<void> resume() async {
    if (!_audioPlayer.playing) {
      await _audioPlayer.play();
    }
  }

  Future<void> play(String src, TrackReadDto trackInfo) async {
    print("Configuring Audio Source");
    if (_audioPlayer.playing) {
      // for some reason if we don't pause before setting a new source
      // the next setAudioSource all will always throw a Connection Aborted Exception
      // but if we called .stop(), then that will break our media session
      // but .pause() will not break our media session and not cause the Connection Aborted Exception
      await _audioPlayer.pause();
    }
    var source = HlsAudioSource(
      Uri.parse(src),
      tag: MediaItem(
        // Specify a unique ID for each media item:
        id: trackInfo.id.toString(),
        // Metadata to display in the notification:
        album: trackInfo.album!.albumName!.default_,
        title: trackInfo.name!.default_,
        artist: trackInfo.album!.albumArtist![0].name!,
        artUri: Uri.parse(
          trackInfo.album!.thumbnail!.medium!.url!,
        ),
      ),
    );
    await _audioPlayer.setAudioSource(source);
    await _audioPlayer.play();
  }

  Future<void> seekTo(Duration position) async {
    if (position < Duration.zero && position > duration!) {
      throw Exception("Invalid position");
    }

    if (_audioPlayer.processingState == ProcessingState.idle) {
      return;
    }

    await _audioPlayer.seek(position);
  }

  Future<void> stop() async {
    if (_audioPlayer.processingState != ProcessingState.idle) {
      await _audioPlayer.stop();
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await _audioPlayer.dispose();
  }

  Stream<ProcessingState> get processingStateStream =>
      _audioPlayer.processingStateStream;

  Stream<Duration?> get positionStream => _audioPlayer.positionStream;

  Stream<Duration?> get bufferedPositionStream =>
      _audioPlayer.bufferedPositionStream;

  Stream<Duration?> get durationStream => _audioPlayer.durationStream;

  Stream<bool> get isPlayingStream => _audioPlayer.playingStream;

  Duration? get bufferedPosition => _audioPlayer.bufferedPosition;

  Duration? get duration => _audioPlayer.duration;

  bool get isPaused => !_audioPlayer.playing;

  bool get isPlaying => _audioPlayer.playing;

  ProcessingState get processingState => _audioPlayer.processingState;

  Duration? get position => _audioPlayer.position;
}
