import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/Colors/Colors.dart';
import '../utils/app_Layout.dart';

class RemaningColumn extends StatelessWidget {
  final String BigText1;
  final String BigText2;
  final String SmallText1;
  final String SmallText2;

  const RemaningColumn(
      {super.key,
      required this.BigText1,
      required this.BigText2,
      required this.SmallText1,
      required this.SmallText2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // first row First column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              BigText1,
              style: Styles.headLineStyle3.copyWith(color: Colors.black),
            ),
            Gap(AppLayout.getHeight(5)),
            Text(
            SmallText1,
              style: Styles.headLineStyle4,
            )
          ],
        ),
        // first row Second column
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              BigText2,
              style: Styles.headLineStyle3.copyWith(color: Colors.black),
            ),
            Gap(AppLayout.getHeight(5)),
            Text(
              SmallText2,
              style: Styles.headLineStyle4,
            )
          ],
        )
      ],
    );
  }
}
