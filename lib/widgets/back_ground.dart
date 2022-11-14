import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: screenSize.height * 0.65,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.center,
          colors: [
            // Color.fromARGB(255, 193, 20, 228),
            Color.fromARGB(255, 173, 72, 241),
            Color.fromARGB(255, 106, 72, 241),
          ]
        )
      ),
    );
  }
}

