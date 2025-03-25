import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 865,
            child: Stack(
              clipBehavior: Clip.hardEdge, // Clip content that overflows
              children: [
                Positioned(
                  top: -90,
                  left: -5,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: [6, 3],
                    strokeWidth: 1,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(6),
                    color: Color(0xFFFEDC00),
                    child: Container(
                      width: 750,
                      height: 440,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.red
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  right: -90,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: [6, 2],
                    strokeWidth: 1,
                    radius: Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: Color(0xFFFEDC00),
                    child: Container(
                      width: 600,
                      height: 500,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        //  color: Colors.blue,
                      ),
                      child: Center(
                        child: const Text(
                          "data",
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -90,
                  left: -380,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: [6, 2],
                    strokeWidth: 1,
                    radius: Radius.circular(10),
                    padding: const EdgeInsets.all(3),
                    color: Color(0xFFFEDC00),
                    child: Container(
                      width: 500,
                      height: 400,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
