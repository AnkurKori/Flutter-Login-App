// ignore_for_file: prefer_const_constructors

import 'package:firstapp/pages/homepage.dart';
import 'package:firstapp/pages/signpage.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.signRoute: (context) => SignPage(),
      },
    );
  }
}
