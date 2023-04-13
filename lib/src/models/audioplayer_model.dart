import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;
  Duration _songDuration = Duration(milliseconds: 0);
  Duration _currentDuration = Duration(milliseconds: 0);

  String get songTotalDuration => printDuration(_songDuration);

  String get currentSecond => printDuration(_currentDuration);

  double get porcentaje => (_songDuration.inSeconds > 0)
      ? _currentDuration.inSeconds / _songDuration.inSeconds
      : 0;

  late AnimationController _controller;

  set controller(AnimationController valor) {
    _controller = valor;
  }

  AnimationController get controller => _controller;

  set playing(bool valor) {
    _playing = valor;
    notifyListeners();
  }

  bool get playing => _playing;

  set songDuration(Duration valor) {
    _songDuration = valor;
    notifyListeners();
  }

  Duration get songDuration => _songDuration;

  set currentDuration(Duration valor) {
    _currentDuration = valor;
    notifyListeners();
  }

  Duration get currentDuration => _currentDuration;

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    // return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
