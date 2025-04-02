import 'package:dating_app/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;

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
                  height: 60,
                  width: 360,
                  decoration: BoxDecoration(),
                  child: AppTextField(
                    prefixIcon: Icon(Icons.mail),
                    hintText: "Email",
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
                )
              ],
            )
          ],
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
      // prefixIcon: SvgPicture.asset(
      //   'assets/Frame.svg',
      //   width: 10,
      //   height: 14,
      // ),
      suffixIcon: IconButton(
        icon: Icon(
          showPassword ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: _toggleVisibility,
      ),
      hintText: 'Password',
      controller: widget.passwordController,
    );
  }
}
