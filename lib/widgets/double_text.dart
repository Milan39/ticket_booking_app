import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/Colors/Colors.dart';

class Double_Text_Widgets extends StatelessWidget {
  final String bigText;
  final String smallText;
  const Double_Text_Widgets({
    super.key,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print('Tapped in view all');
          },
          child: Text(
            smallText,
            style: Styles.textstyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
    ;
  }
}
