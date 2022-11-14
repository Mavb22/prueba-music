import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/audioplayer_model.dart';
class ImagenDisco extends StatelessWidget {
  const ImagenDisco({super.key});
  @override
  Widget build(BuildContext context) {
    // final audioPlayerModel = Provider.of<AudioPlayerModel>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      width: 245,
      height: 245,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color.fromARGB(255, 193, 20, 228),
            Color.fromARGB(255, 48, 73, 211),
          ]
        )
      ),
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(200),
        // child: 
        child: Stack(
          alignment: Alignment.center,
          children: [
            SpinPerfect(
              duration: const Duration(seconds: 10),
              // infinite: true,
              // manualTrigger: true,
              // animate: false,
              // controller: (animationController)=> audioPlayerModel.controller = animationController,
              child: Image.network('https://i.scdn.co/image/ab67616d0000b27349d694203245f241a1bcaa72'),
            ),
            Container(
              width: 25,
              height: 25,
              decoration:  BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            Container(
              width: 18,
              height: 18,
              decoration:  BoxDecoration(
                color: const Color(0xff1C1C25),
                borderRadius: BorderRadius.circular(100),
              ),
            )
          ],
        )
      ),
    );
  }
}





