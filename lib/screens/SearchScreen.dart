// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/thirdPart.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/First_Part.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/Second_Part.dart';
import 'package:ticket_booking/screens/SearchScreen%20Comp/Third_part.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';
import 'package:ticket_booking/widgets/double_text.dart';

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
          Double_Text_Widgets(
            bigText: 'Upcomming Flights',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(15)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /**
                   * First Big container with white color containing column 
                   * Image and text
                   */
                  Container(
                    width: Size.width * 0.44,
                    height: AppLayout.getHeight(400),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(12),
                        vertical: AppLayout.getWidth(12)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: AppLayout.getHeight(150),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/Images/hotel1.jpg'),
                            ),
                          ),
                        ),
                        Gap(AppLayout.getHeight(20)),
                        Text(
                          '20% discount on business class tickets from Airline on international',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),

                  /**
                   * Ends here
                   */

                  /**
                   * Start of Second Container in Row which contain stack 
                   * inside it 1 big container and two text and last one round container
                   */
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: Size.width * 0.44,
                            height: AppLayout.getHeight(170),
                            padding: EdgeInsets.symmetric(
                                vertical: AppLayout.getHeight(15),
                                horizontal: AppLayout.getWidth(15)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF3AB8B8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount \nfor Survey',
                                  style: Styles.headLineStyle2
                                      .copyWith(color: Colors.white),
                                ),
                                Gap(AppLayout.getHeight(10)),
                                Text(
                                  'Take the survey about our service and get discount.',
                                  style: Styles.headLineStyle3.copyWith(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          /**
                       * Round Container
                       */
                          Positioned(
                            right: -35,
                            top: -35,
                            child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30)),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: AppLayout.getWidth(15),
                                  color: Color(0xFF189999),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        ],
                      ),
                      /**
                       * End her the light green container
                       */
                      Gap(AppLayout.getHeight(10)),
                      Container(
                        width: Size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(15),
                          vertical: AppLayout.getWidth(15),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFEC6545),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Take Love',
                              style: Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '😍',
                                    style: TextStyle(fontSize: 35),
                                  ),
                                  TextSpan(
                                    text: '🤩',
                                    style: TextStyle(fontSize: 40),
                                  ),
                                  TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 35),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
