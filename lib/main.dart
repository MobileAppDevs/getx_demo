import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_proj_module/views/FirstScreen.dart';
import 'package:getx_proj_module/views/introScreen1.dart';
import 'package:getx_proj_module/views/introScreen2.dart';
import 'package:getx_proj_module/views/loginScreen.dart';
import 'package:getx_proj_module/views/signupScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Get.toNamed('/');
    } else {
      await prefs.setBool('seen', true);
      Get.toNamed('/introScreen1');
    }
  }

  @override
  void initState() {
    checkFirstSeen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => FirstScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
        GetPage(name: '/introScreen1', page: () => IntroScreen1()),
        GetPage(name: '/introScreen2', page: () => IntroScreen2()),
      ],
    );
  }
}
