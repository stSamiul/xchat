import 'package:flutter/material.dart';
import 'package:xchat/helper/authnticate.dart';
import 'package:xchat/services/auth.dart';

class ChatHome extends StatefulWidget {
  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  AuthMethods authMethods=new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Image.asset(
      "assets/images/App_demo_transparent.png",
      height: 40,
    ),
    //log out options
    actions: [
      GestureDetector(
        onTap: (){
          authMethods.signOut();
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context)=>Authnticate()
          ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.logout)),
      ),
    ],
  ),
  floatingActionButton: FloatingActionButton(
    child:Icon(Icons.search_off_rounded),
    onPressed: (){
      
    }, ),
      
    );
  }
}