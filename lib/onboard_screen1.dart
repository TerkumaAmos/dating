import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class OnboardScreen1 extends StatefulWidget {
  const OnboardScreen1({super.key});

  @override
  State<OnboardScreen1> createState() => _OnboardScreen1State();
}

class _OnboardScreen1State extends State<OnboardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Column(
        children: [
          SizedBox(
            height: 700,
            child: Stack(
              children: [
                Positioned(
                  top: -90,
                  left: -5,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: [10, 3],
                    strokeWidth: 0.2,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: Color(0xFFFFFFFF),
                    child: Container(
                      width: 700,
                      height: 400,
                      decoration: const BoxDecoration(
                        // color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 220,
                  left: 160,
                  child: Image(
                    width: 209.91,
                    height: 310.98,
                    image: AssetImage("assets/img4.png"),
                  ),
                ),
                const Positioned(
                  top: 131,
                  left: -20,
                  child: Image(
                    image: AssetImage("assets/img8.png"),
                  ),
                ),
                Positioned(
                  top: 118,
                  left: 256,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 397,
                  right: -103,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: const [6, 2],
                    strokeWidth: 0.2,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: const Color(0xFFFFFFFF),
                    child: Container(
                      width: 524,
                      height: 507,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        //  color: Colors.blue,
                      ),
                      child: const Stack(
                        children: [
                          Positioned(
                            top: 200,
                            left: 50,
                            child: SizedBox(
                              width: 424,
                              child: Text(
                                "Find amazing people \n         around you.",
                                style: TextStyle(
                                  fontFamily: "WideTrial",
                                  fontSize: 30,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
