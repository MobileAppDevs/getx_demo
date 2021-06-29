// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:getx_proj_module/views/loginScreen.dart';

// class LoginSignupScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var statusbarHeight = MediaQuery.of(context).padding.top;
//     var navbarHeight = MediaQuery.of(context).padding.bottom;
//     var statusNavbarHeight = statusbarHeight + navbarHeight;
//     var screenHeight = Get.height - statusNavbarHeight;
//     // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
//     return GestureDetector(
//       onTap: () {
//         // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
//         // FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             height: screenHeight,
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     ClipPath(
//                       clipper: ClipCurve2(),
//                       child: Container(
//                         height: screenHeight * .70,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Colors.purple[400],
//                               Colors.purple[50],
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     ClipPath(
//                       clipper: ClipCurve1(),
//                       child: Container(
//                         height: screenHeight * .70,
//                         width: Get.width,
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black,
//                               blurRadius: 0,
//                               offset: Offset(100, 100),
//                             ),
//                           ],
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                             colors: [
//                               Colors.purple[100],
//                               Colors.lightBlue[100],
//                             ],
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/images/splashLogo.png',
//                               height: 200,
//                             ),
//                             SizedBox(height: 30),
//                             Text(
//                               "DAXUS",
//                               style: TextStyle(
//                                 letterSpacing: 10,
//                                 fontFamily: 'OpenSans',
//                                 fontSize: 50,
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             // SizedBox(height: screenHeight * .04),
//                             Text(
//                               "Quality never goes out of style",
//                               style: TextStyle(
//                                 fontFamily: 'OpenSans',
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w100,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Hero(
//                         tag: 'loginButton',
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.blue,
//                             elevation: 8,
//                             shadowColor: Colors.grey[50],
//                             minimumSize: Size(Get.width * .75, screenHeight * .06),
//                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
//                           ),
//                           child: Text(
//                             "Log In",
//                             style: TextStyle(
//                               fontFamily: 'OpenSans',
//                               color: Colors.white,
//                             ),
//                           ),
//                           onPressed: () {
//                             Get.to(LoginScreen());
//                           },
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.white,
//                           elevation: 8,
//                           shadowColor: Colors.grey[100],
//                           minimumSize: Size(Get.width * .75, screenHeight * .06),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(500),
//                             side: BorderSide(color: Colors.blue),
//                           ),
//                         ),
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(fontFamily: 'OpenSans', color: Colors.blue),
//                         ),
//                         onPressed: () {},
//                       ),
//                       SizedBox(height: screenHeight * .03),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ClipCurve1 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 20);
//     path.quadraticBezierTo(size.width * .25, size.height, size.width * .5, size.height - 50);
//     path.quadraticBezierTo(size.width * .75, size.height - 100, size.width, size.height - 80);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

// class ClipCurve2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 50);
//     path.quadraticBezierTo(size.width * .20, size.height - 10, size.width * .38, size.height - 30);
//     path.quadraticBezierTo(size.width * .75, size.height - 90, size.width, size.height - 40);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
