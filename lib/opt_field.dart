import 'package:dating_app/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptField extends StatefulWidget {
  const OptField({super.key});

  @override
  State<OptField> createState() => _OptFieldState();
}

class _OptFieldState extends State<OptField> {
  final namecontroller = TextEditingController();
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
                  SizedBox(height: 100),
                  Center(
                    child: SvgPicture.asset(
                      'assets/Group 20.svg',
                      width: 50.7,
                      height: 66.07,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Enter your user name",
                    style: TextStyle(
                      fontFamily: "WideTrial",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 56,
                    width: 350,
                    child: AppTextField(
                      controller: namecontroller,
                      hintText: "Enter your user name",
                      hintStyle:
                          TextStyle(fontFamily: "WideTrial", fontSize: 10),
                    ),
                  ),
                  SizedBox(height: 430),
                  Container(
                    height: 56,
                    width: 350,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xFFFEDC00),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
