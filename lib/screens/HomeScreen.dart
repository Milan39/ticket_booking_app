// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Hotel_Container.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Ticket_card.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/fifthpart.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Firstpart.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/thirdPart.dart';
import 'package:ticket_booking/utils/Data/hotel_info.dart';

import '../utils/Data/Ticket_Data.dart';
import '../utils/app_Layout.dart';
import 'HomeScreen comp/searchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: AppLayout.getHeight(20),
          right: AppLayout.getHeight(20),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Gap(AppLayout.getHeight(40)),
                /**
                 * First Row of the home page
                 */
                FirstPartOfHomePage(),
                Gap(AppLayout.getHeight(20)),
                /**
               * Search Bar of the home page
               */
                SearchBar(),
                Gap(AppLayout.getHeight(40)),
                /**
                * Third row of the home page
                */
                ThirdPart(),

                /**
                 * Tickets cards UI
                 */
                Gap(AppLayout.getHeight(15)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  // padding: EdgeInsets.only(right: 16),
                  child: Row(
                    children: ticket_info
                        .map((Ticket) => MyTicketCard(ticket: Ticket))
                        .toList(),
                  ),
                ),

                /**
                 * Fifth row of the home page
                 */
                Gap(AppLayout.getHeight(20)),
                FifthPart(),

                /**
                 * Hotel Information part 
                 */
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: hotel_info
                          .map((hotel) => Hotel(hotel: hotel))
                          .toList()),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
