// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Ticket_card.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Firstpart.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/thirdPart.dart';

import 'HomeScreen comp/searchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Gap(40),
                // first row of the home page
                FirstPartOfHomePage(),
                Gap(20),
                // search bar of the home page
                SearchBar(),
                Gap(40),
                // third part of the home page
                ThirdPart(),

                //ticket Card
                Gap(15),
                MyTicketCard(),
                
                  
              ],
            ),
          ],
        ),
      ),
    );
  }
}
