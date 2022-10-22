// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/thirdPart.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/First_Part.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/Second_Part.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/Third_part.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          /**
           * First Row of the Search Page
           */
          const First_Part_SearchScreen(),
          Gap(AppLayout.getHeight(20)),
          /**
           * Second Row of the search page
           */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Second_Part_SearchScreen(
                option: 'Airlines Tickets',
                ContainerColor: Colors.white,
              ),
              Second_Part_SearchScreen(
                option: 'Hotels',
                ContainerColor: Colors.transparent,
              )
            ],
          ),

          /**
           * Third part of the search page
           */
          Gap(AppLayout.getHeight(20)),
          Column(
            children: [
              Third_part_SearchScreen(
                ImagePath: 'assets/Images/departure.png',
                name: 'Departure',
              ),
              Gap(AppLayout.getHeight(20)),
              Third_part_SearchScreen(
                ImagePath: 'assets/Images/arrival.png',
                name: 'Arrival',
              )
            ],
          )
        ],
      ),
    );
  }
}
