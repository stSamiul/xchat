import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:xchat/inside/widgets/widget.dart';

class SearchScren extends StatefulWidget {
  @override
  _SearchScrenState createState() => _SearchScrenState();
}

class _SearchScrenState extends State<SearchScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        color: Colors.grey[50],
        child: Column(
          children: [
            Container(
              
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 14),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "user name...",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )
                      ),
                    )),
                    Image.asset("assets/images/search.png")
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}