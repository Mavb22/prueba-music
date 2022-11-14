import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin:const EdgeInsets.only(top:10),
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Icon(FontAwesomeIcons.chevronLeft),
            const Spacer(),
            FloatingActionButton.small(
              backgroundColor: const Color.fromARGB(255, 195, 81, 248),
              child: const Icon(
              Icons.download,
              size: 25,
              color:  Color.fromARGB(255, 255, 255, 255)
            ),
              onPressed: (){}
            ),
            const SizedBox( width: 20),
            const Icon(FontAwesomeIcons.headphones),
            const SizedBox( width: 20),
            const Icon(FontAwesomeIcons.arrowUpRightFromSquare),
          ],
        ),
      ),
    );
  }
}