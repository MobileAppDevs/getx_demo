import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_proj_module/views/UI%20Parts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var statusbarHeight = MediaQuery.of(context).padding.top;
    var navbarHeight = MediaQuery.of(context).padding.bottom;
    var statusNavbarHeight = statusbarHeight + navbarHeight;
    var screenHeight = Get.height - statusNavbarHeight;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: screenHeight,
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipPath(
                        clipper: ClipCurve2(),
                        child: Container(
                          height: screenHeight * .70,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.purple[400],
                                Colors.purple[50],
                              ],
                            ),
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: ClipCurve1(),
                        child: Container(
                          height: screenHeight * .70,
                          width: Get.width,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 0,
                                offset: Offset(100, 100),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.purple[100],
                                Colors.lightBlue[100],
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Log In",
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: screenHeight * .06),
                              // false
                              // Icons.check_circle
                              // Colors.green
                              // "Email"
                              // Icons.email

                              Hero(
                                tag: 'emailField',
                                child: textFieldForLogIn(
                                  obscureText: false,
                                  suffixIcon: Icons.check_circle,
                                  suffixColor: Colors.green,
                                  hintColor: Colors.grey,
                                  hintText: "Email",
                                  prefixIcon: Icons.email,
                                ),
                              ),
                              SizedBox(height: screenHeight * .03),

                              Hero(
                                tag: 'passwordField',
                                child: textFieldForLogIn(
                                  obscureText: true,
                                  suffixIcon: Icons.remove_red_eye,
                                  suffixColor: Colors.grey,
                                  hintColor: Colors.grey,
                                  hintText: "Password",
                                  prefixIcon: Icons.vpn_key,
                                ),
                              ),
                              SizedBox(height: screenHeight * .09),
                              Hero(
                                tag: 'loginButton',
                                child: bigButton(
                                  screenHeight: screenHeight,
                                  buttonColor: Colors.blue,
                                  text: "Log In",
                                  textColor: Colors.white,
                                  function: () {},
                                ),
                              ),
                              SizedBox(height: screenHeight * .04),
                              Text("Forgot you password?",
                                  style: TextStyle(color: Colors.white, fontFamily: 'OpenSans')),
                              SizedBox(height: screenHeight * .04),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * .04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(color: Colors.grey, height: .5, width: Get.width * .10),
                          Text("    or sign in with    ", style: TextStyle(color: Colors.grey, fontFamily: 'OpenSans')),
                          Container(color: Colors.grey, height: .5, width: Get.width * .10),
                        ],
                      ),
                      SizedBox(height: screenHeight * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          smallButton(
                              buttonColor: Colors.white,
                              screenHeight: screenHeight,
                              imageAddress: 'assets/images/google.png',
                              text: "Google",
                              textColor: Color(0xff4285F4),
                              function: () {}),
                          smallButton(
                            buttonColor: Colors.blue,
                            screenHeight: screenHeight,
                            imageAddress: 'assets/images/facebook.png',
                            text: "Facebook",
                            textColor: Colors.white,
                            function: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * .07),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an accout?", style: TextStyle(color: Colors.grey, fontFamily: 'OpenSans')),
                          InkWell(
                            onTap: () => Get.toNamed('/signup'),
                            child: Text("Sign Up", style: TextStyle(color: Colors.blue, fontFamily: 'OpenSans')),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ClipCurve1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);
    path.quadraticBezierTo(size.width * .25, size.height, size.width * .5, size.height - 50);
    path.quadraticBezierTo(size.width * .75, size.height - 100, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ClipCurve2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width * .20, size.height - 10, size.width * .38, size.height - 30);
    path.quadraticBezierTo(size.width * .75, size.height - 90, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
