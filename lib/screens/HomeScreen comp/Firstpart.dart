// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';

class FirstPartOfHomePage extends StatelessWidget {
  const FirstPartOfHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Good Morning",
              style: Styles.headLineStyle3,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Book Tickets',
              style: Styles.headLineStyle1,
            ),
          ],
        ),
        Container(
          height: AppLayout.getHeight(60),
          width: AppLayout.getWidth(60),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
          ),
          child: Center(
              child: Image.asset(
            'assets/Images/logo.png',
            height: AppLayout.getHeight(55),
            width: AppLayout.getWidth(55),
          )),
        )
      ],
    );
  }
}
