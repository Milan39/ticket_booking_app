// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import 'package:ticket_booking/utils/app_Layout.dart';
import 'package:ticket_booking/widgets/Container.dart';

class MyTicketCard extends StatefulWidget {
  const MyTicketCard({super.key});

  @override
  State<MyTicketCard> createState() => _MyTicketCardState();
}

class _MyTicketCardState extends State<MyTicketCard> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      // container 0
      child: Container(
        child: Column(
          children: [
            // container 1
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
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
                        'LDN',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  // second part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New-York',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Text('8H 30M',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Text('London',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white))
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
