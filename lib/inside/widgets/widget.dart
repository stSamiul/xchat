import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Image.asset(
      "assets/images/App_demo_transparent.png",
      height: 40,
    ),
  );
}

InputDecoration signinInput(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.amber,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.amber),
      ));
}

TextStyle simpleTextStyle(){
  return TextStyle(
    color: Colors.black,
    fontSize: 16,
  ) ;
}
