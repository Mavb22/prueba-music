import 'package:flutter/material.dart';
class BarraProgreso extends StatelessWidget {
  const BarraProgreso({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(color: Colors.white.withOpacity(0.4));
    return Column(
      children: <Widget>[
        Text('00:00:00', style:estilo),
        const SizedBox(height: 10),
        Stack(
          children:<Widget> [
            Container(
              width: 3,
              height: 230,
              color: Colors.white.withOpacity(0.1),
            ),
            Positioned(
              bottom: 0,
              child:Container(
                width: 3,
                height: 100,
                color: Colors.white.withOpacity(0.8),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Text('00:00:00', style:estilo),
      ],
    );
  }
}
