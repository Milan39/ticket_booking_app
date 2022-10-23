// ignore_for_file: prefer_const_constructors

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';
import 'Column_TicketScreen.dart';
import 'barcode.dart';

class White_TicketScreen extends StatelessWidget {
  const White_TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /**
           * First Row
           */
          RemaningColumn(
            BigText1: 'Flutter Dash',
            SmallText1: 'Passenger',
            BigText2: '5221 478566',
            SmallText2: 'Passport',
          ),
          Gap(AppLayout.getHeight(30)),
          /**
           * Second Row
           */
          RemaningColumn(
            BigText1: '0055 44 77147',
            SmallText1: 'Number of E-ticket',
            BigText2: 'B2SG28',
            SmallText2: 'Passport',
          ),

          Gap(AppLayout.getHeight(20)),

          /**
           * Third Row 
           */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Third row First column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/Images/visa.png',
                        scale: 11,
                      ),
                      Text(
                        ' *** 2462',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  Text(
                    'Payment method',
                    style: Styles.headLineStyle4,
                  )
                ],
              ),
              // Third row Second column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$249.99',
                    style: Styles.headLineStyle3.copyWith(color: Colors.black),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Price',
                    style: Styles.headLineStyle4,
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          /**
           * bar Code
          */
          MyBarcode()
         
        ],
      ),
    );
  }
}
