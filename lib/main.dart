// import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_app/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Googleauth(),
    );
  }
}

//  Object of GoogleSignIn
