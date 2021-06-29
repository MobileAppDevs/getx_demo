import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Step 2: Done"),
              ElevatedButton(onPressed: () => Get.toNamed('/'), child: Text("Let's Go")),
            ],
          ),
        ),
      ),
    );
  }
}
