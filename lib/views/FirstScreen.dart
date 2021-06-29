import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_proj_module/views/UI%20Parts.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var statusbarHeight = MediaQuery.of(context).padding.top;
    var navbarHeight = MediaQuery.of(context).padding.bottom;
    var statusNavbarHeight = statusbarHeight + navbarHeight;
    var screenHeight = Get.height - statusNavbarHeight;

    return SafeArea(
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
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
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
                            Image.asset(
                              'assets/images/splashLogo.png',
                              height: 175,
                            ),
                            SizedBox(height: 30),
                            Text(
                              "DAXUS",
                              style: TextStyle(
                                letterSpacing: 20,
                                fontFamily: 'OpenSans',
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                // color: Colors.purple[200],
                                color: Colors.blue,
                                // color: Colors.white,
                              ),
                            ),
                            Text(
                              "QUALITY NEVER GOES OUT OF STYLE",
                              style: TextStyle(
                                fontSize: 9,
                                letterSpacing: 3,
                                fontFamily: 'OpenSans',
                                // color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(height: screenHeight * .05),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Hero(
                          tag: 'loginButton',
                          child: bigButton(
                            screenHeight: screenHeight,
                            buttonColor: Colors.blue,
                            text: "Log In",
                            textColor: Colors.white,
                            function: logIn,
                          ),
                        ),
                        SizedBox(height: screenHeight * .03),
                        bigButton(
                          screenHeight: screenHeight,
                          buttonColor: Colors.white,
                          text: "Sign Up",
                          textColor: Colors.blue,
                          function: signUp,
                        ),
                        SizedBox(height: screenHeight * .02),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// void logIn() => Get.toNamed('/login');
void logIn() => Get.toNamed('/introScreen1');

void signUp() => Get.toNamed('/signup');

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
