import 'package:flutter/material.dart';

import '../../utils/Colors/Colors.dart';

class FifthPart extends StatefulWidget {
  const FifthPart({super.key});

  @override
  State<FifthPart> createState() => _FifthPartState();
}

class _FifthPartState extends State<FifthPart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hotels',
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print('Tapped in view all');
          },
          child: Text(
            'View all',
            style: Styles.textstyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }
}