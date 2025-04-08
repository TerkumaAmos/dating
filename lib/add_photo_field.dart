import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'circle_avatar.dart';

class AddPhotoField extends StatelessWidget {
  const AddPhotoField({super.key});

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
      child: Stack(children: [
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
        Column(children: [
          SizedBox(height: 90),
          Center(
            child: SvgPicture.asset(
              'assets/Group (4).svg',
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Add your best photos",
            style: TextStyle(fontFamily: "WideTrial"),
          ),
          SizedBox(height: 20),
          Text(
            "Profile pictures leads to more matches",
            style: TextStyle(
              fontFamily: "New",
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatarField(
                svgContent: Image(
                  image: AssetImage(
                    'assets/Mask group (2).png',
                  ),
                ),
              ),
              CircleAvatarField(
                svgContent: Image(
                  image: AssetImage(
                    'assets/Mask group (3).png',
                  ),
                ),
              ),
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
              CircleAvatarField(
                svgContent: SvgPicture.asset(
                  'assets/Mary.svg',
                  width: 30,
                  height: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 300),
          Container(
            height: 56,
            width: 350,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Continue",
                style: TextStyle(
                  fontFamily: 'WideTrial',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ]),
    ));
  }
}
