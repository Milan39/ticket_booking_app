import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class SecondPart_ProfileScreen extends StatelessWidget {
  const SecondPart_ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: AppLayout.getHeight(90),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              color: Styles.primaryColor),
          child: Padding(
            padding: EdgeInsets.only(left: AppLayout.getHeight(19)),
            child: Row(
              children: [
                //First circle with light bulb inside
                CircleAvatar(
                  maxRadius: AppLayout.getHeight(25),
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.lightbulb_rounded,
                    color: Styles.primaryColor,
                    size: AppLayout.getHeight(28),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: AppLayout.getHeight(300),
          top: AppLayout.getHeight(-35),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(30)),
            decoration: BoxDecoration(
              border: Border.all(
                width: AppLayout.getWidth(20),
                color: Color(0xFF00008B),
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Column with two text
        Positioned(
          left: AppLayout.getHeight(80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(AppLayout.getHeight(20)),
              Text(
                'You\'ve got a new award',
                style: Styles.headLineStyle2.copyWith(
                    color: Colors.white, fontSize: AppLayout.getHeight(23)),
              ),
              Gap(AppLayout.getHeight(2)),
              Text(
                'You have 150 flights in a year',
                style: Styles.headLineStyle4.copyWith(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}