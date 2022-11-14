import 'package:flutter/material.dart';
import 'package:music_player/widgets/back_ground.dart';
import 'package:music_player/widgets/buttons.dart';
import 'package:music_player/widgets/custom_appbar.dart';
import 'package:music_player/widgets/titulo_play.dart';

import '../widgets/barra_progreso.dart';
import '../widgets/imagen_dico.dart';

class MusicPlayer extends StatelessWidget {
const MusicPlayer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:  [
          const Background(),
          Column(
            children: const [
              CustomAppBar(),
              ImagenDiscoDuracion(),
              Tituloplay(),
              Buttons(),
            ],
          )
        ],
      )
    );
  }
}
class ImagenDiscoDuracion extends StatelessWidget {
  const ImagenDiscoDuracion({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(top: 110),
      child: Row(
        children: const <Widget>[
          ImagenDisco(),
          SizedBox(width: 25),
          BarraProgreso(),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}