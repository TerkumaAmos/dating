import 'package:dating_app/circle_avatar.dart'; // Ensure this import is correct
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectFieldPage extends StatelessWidget {
  const SelectFieldPage({super.key});

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
            Column(
              children: [
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
                Text("Profile pictures leads to more matches",style: TextStyle(              fontFamily: "WideTrial",
                ),),
                SizedBox(height: 30),
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
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(
                          0xFFFEDC00,
                        ),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          // shape: RoundedRectangleBorder(
                          //   borderRadius:
                          //   BorderRadius.vertical(top: Radius.circular(20.0)),
                          // ),
                          context: context,
                          builder: (context) {
                            return Column(

                              mainAxisSize: MainAxisSize.min
                              ,
                              children: [
                                SvgPicture.asset("assets/Vector 9.svg"),
                                SizedBox(height: 20),
                                _buildCustomOption(context, 'assets/Vector (3).svg', 'Camera roll',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },
                                ),
                                SizedBox(height: 20),
                                _buildCustomOption(context, 'assets/Vector (2).svg', 'Facebook',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },
                                ),
                                SizedBox(height: 20),

                                _buildCustomOption(context, 'assets/Group (2).svg', 'Instagram',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },
                                ),
                                SizedBox(height: 20),

                                _buildCustomOption(context, 'assets/Group (3).svg', 'Take a photo',   () {
                                  Navigator.pop(context);
                                  print('Camera roll selected');
                                },),SizedBox(height: 23),
                              ],
                            );
                          });
                    },
                    child: Text(
                      'Choose',
                      style: TextStyle(
                        fontFamily: "WideTrial",
                        color: Colors.white,
                      ),
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
Widget _buildCustomOption(
    BuildContext context, String svgPath, String title, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
          height: 60,
      width: 420,

      margin: EdgeInsets.only(left: 10.0,right: 10),
      padding: const EdgeInsets.only(right: 10.0, left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          // Icon
          SvgPicture.asset(
            svgPath,
            // color: Colors.yellow[700], // Apply color to the SVG
            width: 24,
            height: 24,
          ),
          SizedBox(width: 16),
          // Text
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "WideTrial",
            ),
          ),
        ],
      ),
    ),
  );
}