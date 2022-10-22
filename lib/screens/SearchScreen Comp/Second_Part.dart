import 'package:flutter/material.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class Second_Part_SearchScreen extends StatelessWidget {
  final String option;
  final Color ContainerColor;
  const Second_Part_SearchScreen({super.key, required this.option, required this.ContainerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(40),
      width: AppLayout.getWidth(150),
      decoration: BoxDecoration(
        color: ContainerColor,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(20))),
      ),
      child: Center(
        child: Text(
          option,
          style: Styles.headLineStyle3.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
