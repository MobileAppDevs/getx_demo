import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Step 1: Do this"),
              ElevatedButton(onPressed: () => Get.toNamed('/introScreen2'), child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}
