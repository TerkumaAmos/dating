import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
                width: 30,
                height: 30,
              ),
            ),
            Positioned(
              top: 42,
              left: 53,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 26.4,
              left: 20,
              child: SvgPicture.asset(
                "assets/Group 2.svg",
              ),
            ),
            Positioned(
              top: 354,
              left: 79,
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
              top: 649,
              left: 342,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(
                    0xFFFEDC00,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 521,
              left: 367,
              child: SvgPicture.asset(
                "assets/Group 1.svg",
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 135),
                Center(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 29),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "WideTrial",
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 29),
                  child: Text(
                    "Please enter below the details to continue",
                    style: TextStyle(fontFamily: "WideTrial", fontSize: 12),
                  ),
                ),
                SizedBox(height: 56),
                Container(
                  height: 56,
                  width: 343,
                  decoration: BoxDecoration(),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20)),
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
