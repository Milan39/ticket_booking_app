// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/HomeScreen%20comp/Hotel_Container.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/Data/hotel_info.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:ticket_booking/utils/app_Layout.dart';
import 'package:ticket_booking/widgets/Container.dart';

import '../../widgets/Column_TicketScreen.dart';
import '../Ticket Screen Comp/White_TicketScree.dart';

class MyTicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;

  const MyTicketCard({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height:
          isColor == null ? AppLayout.getHeight(216) : AppLayout.getHeight(500),
      // container 0
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
              showing the blue part of the ticket
             */
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getWidth(16),
                top: AppLayout.getWidth(10),
              ),
              decoration: BoxDecoration(
                  color: isColor == null ? ticket['upperColor'] : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(15)),
                      topRight: Radius.circular(AppLayout.getHeight(15)))),
              child: Column(
                children: [
                  /**
                   * first part of the blue card 
                   */
                  Row(
                    children: [
                      Text(
                        ticket['From']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Spacer(),
                      MyContiner(
                        isColor: false,
                      ),
                      Row(
                        children: [
                          Text(' - - -',
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3),
                          Image.asset(
                            'assets/Images/airplane.png',
                            color: isColor == null
                                ? Colors.white
                                : Color(0XFF8ACCF7),
                            height: AppLayout.getHeight(50),
                          ),
                          Text('- - -',
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3)
                        ],
                      ),
                      MyContiner(
                        isColor: false,
                      ),
                      Spacer(),
                      Text(
                        ticket['To']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  // second part of blue card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['From']['name'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Text(
                        ticket['travel_time'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Text(ticket['To']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3)
                    ],
                  )
                ],
              ),
            ),
            /**
             * showing the orange part of the ticket
             */
            Container(
              color: isColor == null ? ticket['LowerColor'] : Colors.white,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // first half circel
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.white : Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppLayout.getWidth(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getWidth(10)))),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: AppLayout.getHeight(12.0),
                          right: AppLayout.getHeight(12.0)),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              height: AppLayout.getHeight(1),
                              width: AppLayout.getWidth(5),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade400),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

                  // second half circle
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.white : Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getWidth(10)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getWidth(10)))),
                    ),
                  ),
                ],
              ),
            ),

            /**
             * Bottom part of the orange ticket
             */
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getWidth(16),
                top: AppLayout.getWidth(10),
              ),
              decoration: BoxDecoration(
                color: isColor == null ? ticket['LowerColor'] : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getWidth(15)),
                  bottomRight: Radius.circular(AppLayout.getWidth(15)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // first column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['Date'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          Gap(AppLayout.getHeight(4)),
                          Text(
                            'Date',
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          )
                        ],
                      ),
                      // second column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['time'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          Gap(AppLayout.getHeight(4)),
                          Text(
                            'Departure time',
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          )
                        ],
                      ),
                      // third column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['Number'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3
                                    .copyWith(color: Colors.black),
                          ),
                          Gap(AppLayout.getHeight(4)),
                          Text(
                            'Number',
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          )
                        ],
                      ),
                    ],
                  ),

                  /**
                   * Ticket page ko aru 
                   */
                  Gap(AppLayout.getHeight(30)),
                  isColor == true ? White_TicketScreen(): Gap(0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
