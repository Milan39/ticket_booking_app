// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

// ignore: camel_case_types
class Last_Part_SearchScreen extends StatelessWidget {
  const Last_Part_SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Column(
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
                        image: AssetImage('assets/Images/sit.jpg'),
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
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white, fontSize: 18),
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
    );
  }
}