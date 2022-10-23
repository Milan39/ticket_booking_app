// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/thirdPart.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/First_Part.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/Last_part.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/Third_part.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';
import 'package:ticket_booking/widgets/double_text.dart';
import 'package:ticket_booking/widgets/two_Container.dart';

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
          Two_Container(
            first: 'Airlines Tickets',
            second: 'Hotels',
          ),
          Gap(AppLayout.getHeight(20)),

          /**
           * Third part of the search page
           */
          Column(
            children: [
              Third_part_SearchScreen(
                Icons: Icons.flight_takeoff_rounded,
                name: 'Departure',
              ),
              Gap(AppLayout.getHeight(20)),
              Third_part_SearchScreen(
                Icons: Icons.flight_land_rounded,
                name: 'Arrival',
              ),
              Gap(AppLayout.getHeight(20)),
              /**
             * Find Tickets
             */
              Container(
                width: Size.width * 0.85,
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(10),
                    horizontal: AppLayout.getWidth(10)),
                decoration: BoxDecoration(
                    color: Color(0xFF0057D9),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Find Tickets',
                    style: Styles.textstyle
                        .copyWith(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),

          /**
           * Upcomming Flights and View all
           */
          Double_Text_Widgets(
            bigText: 'Upcomming Flights',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(15)),

          /**
           * Last part of the search page 
           */
          Last_Part_SearchScreen(),
        ],
      ),
    );
  }
}
