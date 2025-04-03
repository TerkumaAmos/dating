import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BirthdayPage extends StatelessWidget {
  const BirthdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
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
                top: 617,
                left: 342,
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
                top: 338,
                left: 234,
                child: Container(
                  width: 28,
                  height: 28,
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
                left: 367,
                top: 521,
                child: SvgPicture.asset(
                  'assets/Group 1.svg',
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 130),
                  Center(
                    child: SvgPicture.asset(
                      'assets/Group (1).svg',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "When were you born?",
                    style: TextStyle(
                      fontFamily: "WideTrial",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 56,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        hintStyle: TextStyle(
                          fontFamily: "WideTrial",
                          fontSize: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 420),
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
                          fontFamily: "WideTrial",
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
