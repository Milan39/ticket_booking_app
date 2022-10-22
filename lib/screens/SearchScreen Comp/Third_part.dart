import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class Third_part_SearchScreen extends StatelessWidget {
  final IconData Icons;
  final String name;
  const Third_part_SearchScreen({
    super.key,
    required this.Icons,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Container(
      width: Size.width * 0.85,
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(10),
          horizontal: AppLayout.getWidth(10)),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
      child: Row(
        children: [
          Icon(
            Icons,
            color: Colors.grey.shade400,
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            name,
            style: Styles.headLineStyle3.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
