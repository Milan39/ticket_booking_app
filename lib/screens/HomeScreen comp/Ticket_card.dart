// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';
import 'package:ticket_booking/widgets/Container.dart';

class MyTicketCard extends StatelessWidget {
  final Map<String, dynamic>ticket;

  const MyTicketCard({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      // container 0
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
              showing the blue part of the ticket
             */
            Container(
              padding:
                  EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
              decoration: BoxDecoration(
                  color: ticket['upperColor'],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Column(
                children: [
                  /**
                   * first part of the blue card 
                   */
                  Row(
                    children: [
                      Text(
                        ticket['From'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Spacer(),
                      MyContiner(),
                      Row(
                        children: [
                          Text(' - -',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          Image.asset(
                            'assets/Images/airplane.png',
                            color: Colors.white,
                            height: 50,
                          ),
                          Text(' - -',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white))
                        ],
                      ),
                      MyContiner(),
                      Spacer(),
                      Text(
                        ticket['To'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  // second part of blue card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['From_fullForm'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Text( ticket['travel_time'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Text(ticket['To_fulForm'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            /**
             * showing the orange part of the ticket
             */
            Container(
              color: ticket['LowerColor'],
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // first half circel
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              height: 1,
                              width: 5,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),

                  // second half circle
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),

            /**
             * Bottom part of the orange ticket
             */
            Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                color: ticket['LowerColor'],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
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
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(4),
                          Text(
                            'Date',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      // second column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['time'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(4),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      // third column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['Number'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(4),
                          Text(
                            'Number',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

