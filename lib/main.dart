import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/page2.dart';
import 'package:login/postsScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',

      home: PostScreen(),
    );
  }
}








