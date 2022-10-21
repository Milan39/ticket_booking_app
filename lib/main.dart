// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';

import 'screens/Bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary
      ),
      home: MyHomePage(),
    );
  }
}

