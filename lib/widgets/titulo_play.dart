import 'package:flutter/material.dart';

class Tituloplay extends StatelessWidget {
  const Tituloplay ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text('Ojitos Bonitos ', style: TextStyle(fontSize: 25, color: Colors.white.withOpacity(0.8)),),
          Text('Bad Bunny', style: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.8)),),
        ],
      ),
    );
  }
}