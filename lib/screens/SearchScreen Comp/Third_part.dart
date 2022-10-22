import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class Third_part_SearchScreen extends StatelessWidget {
  final String ImagePath;
  final String name;
  const Third_part_SearchScreen({
    super.key,
    required this.ImagePath,
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
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
              height: AppLayout.getHeight(30),
              width: AppLayout.getHeight(30),
              child: Image.asset(
                ImagePath,
                fit: BoxFit.cover,
                color: Colors.grey[400],
              )),
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
