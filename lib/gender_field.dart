import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderField extends StatelessWidget {
  const GenderField({super.key});

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
                top: 586,
                left: -11,
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
                left: 342,
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
                  SizedBox(height: 100),
                  Center(
                    child: SvgPicture.asset(
                      'assets/Vector.svg',
                      width: 50.7,
                      height: 66.07,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'What\'s your gender?',
                      style: TextStyle(
                        fontFamily: 'WideTrial',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 56,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // hintText: 'Man',
                        hintStyle: TextStyle(
                          fontFamily: 'WideTrial',
                          fontSize: 11,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10.0, left: 10),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/omo.svg',
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Man",
                                style: TextStyle(
                                  fontFamily: 'WideTrial',
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 56,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // hintText: 'Woman',
                        hintStyle: TextStyle(
                          fontFamily: 'WideTrial',
                          fontSize: 10,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset('assets/Vector (1).png'),
                              SizedBox(width: 10),
                              Text(
                                "Woman",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "WideTrial"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "What do you want to date?",
                    style: TextStyle(fontFamily: "WideTrial", fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 56,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // hintText: 'Man',
                        // hintStyle: TextStyle(
                        //   fontFamily: 'WideTrial',
                        //   fontSize: 10,
                        // ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10.0, left: 10),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/omo.svg',
                                width: 10,
                                height: 10,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Man",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "WideTrial"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 56,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Woman',
                        hintStyle: TextStyle(
                          fontFamily: 'WideTrial',
                          fontSize: 10,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset('assets/Vector (1).png'),
                              SizedBox(width: 10),
                              Text(
                                "Woman",
                                style: TextStyle(
                                    fontFamily: "WideTrial", fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 56,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Woman',
                        hintStyle: TextStyle(
                          fontFamily: 'WideTrial',
                          fontSize: 10,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/omo.svg',
                                width: 12,
                                height: 12,
                              ),
                              Image.asset('assets/Vector (2).png'),
                              SizedBox(width: 5),
                              Text(
                                'All',
                                style: TextStyle(
                                    fontFamily: 'WideTrial', fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    height: 56,
                    width: 363,
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
                            color: Colors.white,
                            fontFamily: "WideTrial",
                            fontSize: 10),
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
