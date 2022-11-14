import 'package:flutter/material.dart';
import 'package:music_player/page/music_player.dart';
import 'package:music_player/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: themePurple,
      home: const MusicPlayer()
    );
  }
}