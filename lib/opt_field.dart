import 'package:flutter/material.dart';

class OptField extends StatelessWidget {
  const OptField({super.key});

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
        // width: double.infinity,
        // constraints: BoxConstraints(
        //   minHeight: MediaQuery.of(context).size.height,
        // ),
        child: Stack(
          children: [
            Positioned(
              top: 72,
              left: 330,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFEDC00,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 683,
              left: 399,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFEDC00,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
