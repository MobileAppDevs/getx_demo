import 'package:flutter/material.dart';
import 'package:get/get.dart';

bigButton({double screenHeight, Color buttonColor, String text, Color textColor, Function function}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: buttonColor,
      elevation: 8,
      shadowColor: Colors.grey[50],
      minimumSize: Size(Get.width * .75, screenHeight * .06),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
    ),
    child: Text(text, style: TextStyle(fontFamily: 'OpenSans', color: textColor)),
    onPressed: function,
  );
}

smallButton(
    {Color buttonColor, double screenHeight, String imageAddress, String text, Color textColor, Function function}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: buttonColor,
      elevation: 8,
      shadowColor: Colors.grey[100],
      minimumSize: Size(Get.width * .35, screenHeight * .05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
    ),
    child: Row(
      children: [
        Image.asset(imageAddress, height: 16),
        // Icon(Icons.mail_outline, size: 20),
        SizedBox(width: Get.width * .04),
        Text(text, style: TextStyle(color: textColor, fontFamily: 'OpenSans')),
      ],
    ),
    onPressed: function,
  );
}

textFieldForLogIn(
    {bool obscureText, IconData suffixIcon, Color suffixColor, Color hintColor, String hintText, IconData prefixIcon}) {
  return Container(
    width: Get.width * .75,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(99),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: const Offset(5, 10),
        ),
      ],
    ),
    child: TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon, color: suffixColor),
        contentPadding: EdgeInsets.only(),
        hintStyle: TextStyle(color: hintColor),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}

textFieldForSignUp({String text, IconData icon}) {
  return Container(
    width: Get.width * .75,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(99),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 10, offset: const Offset(5, 10)),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(),
        hintStyle: TextStyle(color: Colors.grey),
        hintText: text,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    ),
  );
}
