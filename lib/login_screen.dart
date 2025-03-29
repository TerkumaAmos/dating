import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        child: Stack(
          children: [
            Positioned(
              top: 72,
              left: 330,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 42,
              left: 53,
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 354,
              left: 79,
              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 540,
              left: 301,
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 180),
                const Center(
                  child: Text(
                    "String.",
                    style: TextStyle(fontFamily: "WideTrial", fontSize: 30),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: "Meet thousand of people\nby creating an",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontFamily: "WideTrial"),
                    children: [
                      TextSpan(
                        text: " account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
