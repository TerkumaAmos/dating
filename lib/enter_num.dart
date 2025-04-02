import 'package:flutter/material.dart';

class EnterNum extends StatelessWidget {
  const EnterNum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 1.5,
          colors: [
            Colors.white,
            Color(0xFFfbf1af), // Light yellow
            Color(0xFFf9e07f),
          ],
          stops: [0.2, 0.7, 1.0],
        ),
      ),
    ));
  }
}
