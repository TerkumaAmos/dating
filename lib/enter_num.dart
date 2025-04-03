import 'package:dating_app/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterNum extends StatefulWidget {
  const EnterNum({super.key});

  @override
  State<EnterNum> createState() => _EnterNumState();
}

class _EnterNumState extends State<EnterNum> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = true;

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
                left: 330,
                top: 72,
                child: Container(
                  width: 30,
                  height: 30,
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
                left: 323,
                top: 311,
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
                left: -11,
                top: 558,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                      color: Color(
                        0xFFFEDC00,
                      ),
                      shape: BoxShape.circle),
                ),
              ),
              Positioned(
                top: 521,
                left: 367,
                child: SvgPicture.asset(
                  "assets/Group 1.svg",
                ),
              ),
              Positioned(
                top: 25,
                left: 33,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 135),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 29),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontFamily: "WideTrial",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 29),
                    child: Text(
                      "Please enter below the details to continue",
                      style: TextStyle(
                        fontFamily: 'WideTrial',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 56),
                  Container(
                    height: 60,
                    width: 360,
                    decoration: BoxDecoration(),
                    child: AppTextField(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10),
                        child: Icon(
                          Icons.mail,
                          size: 16,
                        ),
                      ),
                      hintText: "patrickhale@gmail.com",
                      hintStyle: TextStyle(fontFamily: "WideTrial"),
                      controller: emailController,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 60,
                    width: 360,
                    child: Password(
                      passwordController: passwordController,
                    ),
                  ),
                  SizedBox(height: 350),
                  Container(
                    height: 56,
                    width: 360,
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
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "WideTrial",
                        ),
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

class Password extends StatefulWidget {
  const Password({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool showPassword = false;

  void _toggleVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      obscureText: showPassword,
      prefixIcon: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10),
        child: SvgPicture.asset(
          'assets/Frame.svg',
          width: 10,
          height: 14,
          fit: BoxFit.contain,
        ),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          showPassword ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: _toggleVisibility,
      ),
      hintText: 'Password',
      hintStyle: TextStyle(fontFamily: "WideTrial"),
      controller: widget.passwordController,
    );
  }
}
