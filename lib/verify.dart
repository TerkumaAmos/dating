import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

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
              top: 383,
              left: 336,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
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
                decoration: BoxDecoration(
                  color: Color(
                    0xFFFEDC00,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 435,
              left: 42,
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
              top: 25,
              left: 40,
              child: SvgPicture.asset(
                'assets/Group 2.svg',
              ),
            ),
            Positioned(
              top: 75,
              left: 23,
              child: SvgPicture.asset(
                'assets/Frame (1).svg',
              ),
            ),
            Positioned(
              left: 309,
              top: 72,
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Stinger',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 120),
                Center(
                  child: SvgPicture.asset('assets/Group (14).svg'),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Verify',
                      style: TextStyle(fontFamily: 'WideTrial', fontSize: 25),
                    ),
                    SizedBox(width: 9),
                    SvgPicture.asset('assets/Group (7).svg')
                  ],
                ),
                Text(
                  "Verify your pictures to become a verified profile.\nOpen camera to take a selfie and image match\nthe display picture",
                  style: TextStyle(
                    fontFamily: 'Stinger',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 40),
                Image(
                  image: AssetImage(
                    'assets/Mask group (5).png',
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Open camera',
                      style: TextStyle(
                        fontFamily: 'WideTrial',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
