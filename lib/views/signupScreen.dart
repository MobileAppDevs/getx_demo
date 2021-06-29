import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_proj_module/views/UI%20Parts.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var statusbarHeight = MediaQuery.of(context).padding.top;
    var navbarHeight = MediaQuery.of(context).padding.bottom;
    var statusNavbarHeight = statusbarHeight + navbarHeight;
    var screenHeight = Get.height - statusNavbarHeight;
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return GestureDetector(
      onTap: () {
        // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
        FocusScope.of(context).unfocus();
      },
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
                              colors: [Colors.purple[400], Colors.purple[50]],
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
                              BoxShadow(color: Colors.black, blurRadius: 0, offset: Offset(100, 100)),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.purple[100], Colors.lightBlue[100]],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: screenHeight * .05),
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: screenHeight * .06),
                              textFieldForSignUp(text: "Name", icon: Icons.person),
                              SizedBox(height: screenHeight * .03),
                              Hero(
                                tag: 'emailField',
                                child: textFieldForSignUp(text: "Email", icon: Icons.email),
                              ),
                              SizedBox(height: screenHeight * .03),
                              Hero(
                                tag: 'passwordField',
                                child: textFieldForSignUp(text: "Password", icon: Icons.vpn_key),
                              ),
                              SizedBox(height: screenHeight * .09),
                              Hero(
                                tag: 'loginButton',
                                child: bigButton(
                                  screenHeight: screenHeight,
                                  buttonColor: Colors.blue,
                                  text: "Sign Up",
                                  textColor: Colors.white,
                                  function: () {},
                                ),
                              ),
                              SizedBox(height: screenHeight * .1),
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
                          Text("    or sign up with    ", style: TextStyle(color: Colors.grey, fontFamily: 'OpenSans')),
                          Container(color: Colors.grey, height: .5, width: Get.width * .10),
                        ],
                      ),
                      SizedBox(height: screenHeight * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 8,
                              shadowColor: Colors.grey[100],
                              minimumSize: Size(Get.width * .35, screenHeight * .05),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/google.png', height: 16),
                                SizedBox(width: Get.width * .04),
                                Text("Google", style: TextStyle(color: Color(0xff4285F4), fontFamily: 'OpenSans')),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              elevation: 8,
                              shadowColor: Colors.grey[200],
                              minimumSize: Size(Get.width * .35, screenHeight * .05),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/images/facebook.png', height: 16),
                                SizedBox(width: Get.width * .04),
                                Text("Facebook", style: TextStyle(fontFamily: 'OpenSans')),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * .07),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account?", style: TextStyle(color: Colors.grey, fontFamily: 'OpenSans')),
                          InkWell(
                            onTap: () => Get.toNamed('/login'),
                            child: Text("Log in", style: TextStyle(color: Colors.blue, fontFamily: 'OpenSans')),
                          )
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
    path.lineTo(0, size.height - 10);
    path.quadraticBezierTo(size.width * .25, size.height + 10, size.width * .5, size.height - 40);
    path.quadraticBezierTo(size.width * .75, size.height - 90, size.width, size.height - 70);
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
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width * .20, size.height + 00, size.width * .38, size.height - 20);
    path.quadraticBezierTo(size.width * .75, size.height - 80, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
