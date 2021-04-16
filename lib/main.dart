import 'package:flutter/material.dart';
import 'package:xchat/inside/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xchat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: SignIn(),
    );
  }
}