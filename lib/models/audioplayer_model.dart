import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier{
  bool _playing = false;
  Duration _songDuration = Duration(microseconds: 0);
  Duration _current = Duration(microseconds: 0);
  String get songTotalDuracion => printDuration(_songDuration);
  String get curretSecond => printDuration(_current);
  double get porcentaje => (_songDuration.inSeconds > 0) ? _current.inSeconds / _songDuration.inSeconds: 0;
  late AnimationController _controller;
  set controller(AnimationController valor){
    _controller = valor;
  }
  AnimationController get controller => _controller;
  bool get playing  => _playing;
  set playing (bool valor){
    _playing = valor;
    notifyListeners();
  }
  Duration get songDuration => _songDuration;
  set songDuration(Duration valor){
    _songDuration = valor;
    notifyListeners();
  }
  Duration get current => _current;
  set current(Duration valor){
    _current = valor;
    notifyListeners();
  }
  String printDuration (Duration duration){
    String twoDigits(int n){
      if(n >=10) return "$n"; 
      return "0$n";
    }
    String twoDigitsMinutes = twoDigits(duration.inSeconds.remainder(60));
    String twoDigitsSeconds = twoDigits(duration.inSeconds.remainder(10));
    // return "${twoDigits(duration.inHours)}:$twoDigitsMinutes:$twoDigitsSeconds";
    return "$twoDigitsMinutes:$twoDigitsSeconds";
  }

}
