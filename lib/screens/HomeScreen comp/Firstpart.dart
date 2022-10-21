// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';

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
              style: Styles.headLineStyle,
            ),
          ],
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Image.asset('assets/Images/img1.png',height: 55,width: 55,)),
        )
      ],
    );
  }
}
