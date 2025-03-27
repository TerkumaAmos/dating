import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen1 extends StatelessWidget {
  final _controller = PageController();

  OnboardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
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
                    color: const Color(0xFFFFFFFF),
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
                  right: -90,
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: const [6, 2],
                    strokeWidth: 0.2,
                    radius: const Radius.circular(12),
                    padding: const EdgeInsets.all(6),
                    color: const Color(0xFFFFFFFF),
                    child: Container(
                      width: 524,
                      height: 490,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        //  color: Colors.blue,
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 200,
                            left: 50,
                            child: SizedBox(
                              width: 424,
                              child: Text(
                                "Find amazing people \n         around you",
                                style: TextStyle(
                                  fontFamily: "WideTrial",
                                  fontSize: 30,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            child: PageView(
                              controller: _controller,
                            ),
                          ),
                          Positioned(
                            top: 300,
                            left: 190,
                            child: SmoothPageIndicator(
                              controller: _controller,
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                activeDotColor: Colors.yellow,
                                dotColor: Colors.white,
                                dotHeight: 10,
                                dotWidth: 10,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 350,
                            left: 150,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                //  color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.white)),
                                    child: const Text(
                                      "Skip",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "WideTrial"),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.yellow)),
                                    child: const Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "WideTrial",
                                      ),
                                    ),
                                  ),
                                ],
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
