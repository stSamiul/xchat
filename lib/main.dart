import 'package:flutter/material.dart';
import 'package:xchat/helper/authnticate.dart';
//import 'package:xchat/inside/signin.dart';
import 'package:firebase_core/firebase_core.dart';
//
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: Authnticate(),
    );
  }
}