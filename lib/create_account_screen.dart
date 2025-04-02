import 'package:dating_app/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
              top: 412,
              left: -18,
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
              top: 50,
              left: 9,
              child: SvgPicture.asset(
                "assets/Group 2.svg",
                width: 94.5,
                height: 40.62,
              ),
            ),
            Positioned(
              top: 484,
              left: 367,
              child: SvgPicture.asset(
                "assets/Group 1.svg",
                width: 94.5,
                height: 40.62,
              ),
            ),
            Positioned(
              top: 613,
              left: 331,
              child: Container(
                width: 22,
                height: 22,
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
                const SizedBox(height: 130),
                const Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(fontFamily: "WideTrial", fontSize: 24),
                  ),
                ),
                const SizedBox(height: 370),
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xFFFEDC00),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Continue with Email",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "WideTrial"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      side: WidgetStatePropertyAll(
                        BorderSide(color: Colors.black),
                      ),
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/Vector1.svg"),
                        // const SizedBox(width: 30),
                        const Text(
                          "Continue with facebook",
                          style: TextStyle(
                              color: Colors.black, fontFamily: "WideTrial"),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      side: WidgetStatePropertyAll(
                        BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset("assets/Group.svg"),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'WideTrial',
                          ),
                        ),
                      ],
                    ),
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
