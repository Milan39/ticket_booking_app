// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/Profile%20Page%20Comp/SecondPart.dart';
import 'package:ticket_booking/screens/Profile%20Page%20Comp/lastpart.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';

import 'Profile Page Comp/First_Part_ProfileScreen.dart';

class My_Profile_Screen extends StatefulWidget {
  const My_Profile_Screen({super.key});

  @override
  State<My_Profile_Screen> createState() => _My_Profile_ScreenState();
}

class _My_Profile_ScreenState extends State<My_Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getWidth(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          /**
           * First Part
           */
          FirstPart_ProfileScreen(),

          /**
           * Second Part
           */
          Gap(AppLayout.getHeight(30)),
          SecondPart_ProfileScreen(),

          /**
           * Last Part 
           */
          Gap(AppLayout.getHeight(30)),
          LastPart_ProfileScreen()
        ],
      ),
    );
  }
}
