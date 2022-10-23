// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Ticket_card.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/Data/Ticket_Data.dart';
import 'package:ticket_booking/utils/app_Layout.dart';
import 'package:ticket_booking/widgets/two_Container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getWidth(20)),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(AppLayout.getHeight(40)),
                    /**
               * Ticket Title
               */
                    Text(
                      'Tickets',
                      style: Styles.headLineStyle1.copyWith(fontSize: 40),
                    ),
                    Gap(AppLayout.getHeight(30)),

                    /**
               * Upcommig and Previous Container
               */
                    Two_Container(
                      first: 'Upcomming',
                      second: 'Previous',
                    ),
                    Gap(AppLayout.getHeight(20)),

                    /**
               * First White Ticket where MyTicketCard From HomeScreen rs reused
               */
                    Container(
                      padding: EdgeInsets.only(
                        left: AppLayout.getHeight(15),
                      ),
                      child: MyTicketCard(
                        ticket: ticket_info[0],
                        isColor: true,
                      ),
                    ),
                    Gap(AppLayout.getHeight(20)),

                    /**
               * Reuse of MyTicketCard again at last
               */
                    Container(
                      padding: EdgeInsets.only(
                        left: AppLayout.getHeight(15),
                      ),
                      child: MyTicketCard(
                        ticket: ticket_info[0],
                      ),
                    )
                  ],
                ),
              ],
            ),

            /**
             * First Small circle
             */
            Positioned(
              top: AppLayout.getHeight(300),
              left: AppLayout.getWidth(25),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: AppLayout.getWidth(1)),
                ),
                child: CircleAvatar(
                  maxRadius: 5,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            /**
             * Second Small Circle
             */
             Positioned(
              top: AppLayout.getHeight(300),
              left: AppLayout.getWidth(340),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Styles.textColor, width: AppLayout.getWidth(1)),
                ),
                child: CircleAvatar(
                  maxRadius: 5,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ));
  }
}
