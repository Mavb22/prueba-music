import 'package:flutter/material.dart';
import 'package:music_player/models/audioplayer_model.dart';
import 'package:music_player/page/music_player.dart';
import 'package:music_player/theme/theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=> AudioPlayerModel(),)
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: themePurple,
      home: const MusicPlayer()
    ),
    );
  }
}