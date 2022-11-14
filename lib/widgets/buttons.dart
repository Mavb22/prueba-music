import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {

  const Buttons({Key? key}) : super(key: key);
  @override
   State<Buttons> createState() => _ButtonsState();
}
class _ButtonsState extends State<Buttons> with SingleTickerProviderStateMixin{
  bool isPlaying = false;
  bool firstTime = false;
  bool isLoop = false;
  late AnimationController playAnimation;

  // final assetAudioplayer = AssetsAudioPlayer();
  @override
  void initState(){
    playAnimation = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }
  @override
  void dispose(){
    playAnimation.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
     return Container(
      padding: const EdgeInsets.only(top:70),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.small(
            backgroundColor: const Color.fromARGB(255, 195, 81, 248),
            child: const Icon(
              Icons.shuffle,
              size: 30,
              color:  Color.fromARGB(255, 255, 255, 255)
            ),
            onPressed: (){},
          ),
          FloatingActionButton.small(
            backgroundColor: const Color.fromARGB(255, 195, 81, 248),
            child: const Icon(
              Icons.keyboard_arrow_left,
              size: 40,
              color:  Color.fromARGB(255, 255, 255, 255)
            ),
            onPressed: (){},
          ),
          FloatingActionButton(
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: const Color.fromARGB(255, 195, 81, 248),
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              size: 50,
              color:const Color.fromARGB(255, 255, 255, 255) ,
              progress: playAnimation,
            ),
            // Icon(
            //     _play ? Icons.pause : Icons.play_arrow,
            //     size: 50,
            //     color:  const Color.fromARGB(255, 255, 255, 255)
            //   ),
            
            onPressed: (){
              // final audioPlayerModel = Provider.of<AudioPlayerModel>(context,listen: false);
              // setState(() {
              //   _play = !_play;
              // });
              if(isPlaying){
                playAnimation.reverse();
                isPlaying = false;
                // audioPlayerModel.controller.stop();
              }else{
                playAnimation.forward();
                isPlaying = true;
                // audioPlayerModel.controller.repeat();
              }

              // if(firstTime){
              //   open();
              //   firstTime =false;
              // }else{
              //   assetAudioplayer.playOrPause();
              // }
            },
          ),
          FloatingActionButton.small(
            backgroundColor: const Color.fromARGB(255, 195, 81, 248),
            child: const Icon(
              Icons.keyboard_arrow_right,
              size: 40,
              color:  Color.fromARGB(255, 255, 255, 255)
            ),
            onPressed: (){},
          ),
          FloatingActionButton.small(
            backgroundColor: const Color.fromARGB(255, 195, 81, 248),
            child: Icon(
              isLoop ? Icons.repeat_one : Icons.repeat,
              size: 30,
              color: const Color.fromARGB(255, 255, 255, 255)
            ),
            onPressed: (){
              setState(() {
                isLoop = !isLoop;
              });
            },
          ),
        ],
      ),
    );
  }
}