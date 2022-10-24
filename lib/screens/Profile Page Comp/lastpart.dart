import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class LastPart_ProfileScreen extends StatefulWidget {
  const LastPart_ProfileScreen({super.key});

  @override
  State<LastPart_ProfileScreen> createState() => _LastPart_ProfileScreenState();
}

class _LastPart_ProfileScreenState extends State<LastPart_ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Accumulated miles Text
        Text(
          'Accumulated miles',
          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w600),
        ),
        Gap(AppLayout.getHeight(20)),
        // 192802 Number
        Center(
          child: Text(
            '192802',
            style: Styles.headLineStyle1
                .copyWith(fontSize: 45, fontWeight: FontWeight.w500),
          ),
        ),
        Gap(AppLayout.getHeight(20)),

        //Row bhitra column ani bhitra text haru
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // First Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Miles accrued',
                    style: Styles.headLineStyle3.copyWith(fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    '23 042',
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.black, fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Miles',
                    style: Styles.headLineStyle3,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    '24',
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.black, fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Miles',
                    style: Styles.headLineStyle3,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    '52 340',
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.black, fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Miles',
                    style: Styles.headLineStyle3,
                  ),
                ],
              ),

              // second Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '23 May 2021',
                    style: Styles.headLineStyle3.copyWith(fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    'Airline CO',
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.black, fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Received from',
                    style: Styles.headLineStyle3,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    'McDonal\'s',
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.black, fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Received from',
                    style: Styles.headLineStyle3,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    'Exuma',
                    style: Styles.headLineStyle3
                        .copyWith(color: Colors.black, fontSize: 19),
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Text(
                    'Received from',
                    style: Styles.headLineStyle3,
                  ),
                ],
              ),
            ],
          ),
        ),
        Gap(AppLayout.getHeight(20)),
        // How to get more miles text
        InkWell(
          onTap: (){
            print('Tapped for more miles');
          },
          child: Center(
            child: Text(
              'How to get more miles',
              style: Styles.headLineStyle3.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Styles.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}