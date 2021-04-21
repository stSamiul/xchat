import 'package:flutter/material.dart';
import 'package:xchat/inside/signin.dart';
import 'package:xchat/inside/signup.dart';

class Authnticate extends StatefulWidget {
  @override
  _AuthnticateState createState() => _AuthnticateState();
}

class _AuthnticateState extends State<Authnticate> {
  bool showSignIn=true;
  void toggleview(){
    setState(() {
          showSignIn=!showSignIn;
        });
  }
  @override
  Widget build(BuildContext context) {
     if(showSignIn){
      return SignIn(toggleview);
    }else{
      return SignUp(toggleview);
    }
  }
}