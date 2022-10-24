// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class FirstPart_ProfileScreen extends StatelessWidget {
  const FirstPart_ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // first Container with logo
        Container(
          height: AppLayout.getHeight(80),
          width: AppLayout.getWidth(80),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
          ),
          child: Center(
              child: Image.asset(
            'assets/Images/logo.png',
            height: AppLayout.getHeight(AppLayout.getHeight(70)),
            width: AppLayout.getWidth(AppLayout.getWidth(70)),
          )),
        ),

        //Second Comp which contain Column with three children
        Gap(AppLayout.getWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Tickets',
              style: Styles.headLineStyle1.copyWith(fontSize: 25),
            ),
            Gap(AppLayout.getHeight(5)),
            Text(
              'New-York',
              style: Styles.headLineStyle3,
            ),
            Gap(AppLayout.getHeight(5)),
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 12,
                  backgroundColor: Styles.primaryColor,
                  child: Icon(
                    Icons.shield,
                    color: Colors.white,
                    size: AppLayout.getHeight(15),
                  ),
                ),
                Gap(AppLayout.getWidth(5)),
                Text(
                  'Premium Status',
                  style: Styles.textstyle.copyWith(color: Styles.primaryColor),
                )
              ],
            )
          ],
        ),
        // Last Part "Edit"
        Gap(AppLayout.getHeight(60)),
        InkWell(
          onTap: (){
            print('Edit button is tapped');
          },
          child: Text(
            'Edit',
            style: Styles.textstyle
                .copyWith(color: Styles.primaryColor, fontSize: AppLayout.getHeight(20)),
          ),
        )
      ],
    );
  }
}