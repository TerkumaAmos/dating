import 'package:dating_app/add_photo_field.dart';
import 'package:dating_app/birthday.dart';
import 'package:dating_app/bottom_sheet.dart';
import 'package:dating_app/create_account_screen.dart';
import 'package:dating_app/enter_num.dart';
import 'package:dating_app/gender_field.dart';
import 'package:dating_app/login_screen.dart';
import 'package:dating_app/onboard_screen1.dart';
import 'package:dating_app/onboard_screen2.dart';
import 'package:dating_app/select_field.dart';
import 'package:dating_app/sign_in.dart';
import 'package:dating_app/verify.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'calender_page.dart';
import 'learning_calendar_field.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    naviagateUser();
    super.initState();
  }

  naviagateUser() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SplashScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
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
                    dashPattern: const [10, 3],
                    strokeWidth: 0.2,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: const Color(0xFFFEDC00),
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
                  top: 180,
                  left: 150,
                  child: Container(
                    width: 15,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  right: -90,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: const [10, 3],
                    strokeWidth: 0.2,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: const Color(0xFFFEDC00),
                    child: Container(
                      width: 600,
                      height: 500,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        //  color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          "String.",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "WideTrial",
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 650,
                  left: 50,
                  child: Container(
                    width: 15,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -90,
                  left: -380,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: const [10, 3],
                    strokeWidth: 0.2,
                    radius: const Radius.circular(10),
                    padding: const EdgeInsets.all(3),
                    color: const Color(0xFFFEDC00),
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
