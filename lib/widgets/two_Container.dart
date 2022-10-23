import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/Colors/Colors.dart';
import '../utils/app_Layout.dart';

class Two_Container extends StatelessWidget {
  final first;
  final second;
  const Two_Container({super.key, this.first, this.second});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Row(
      children: [
        /**
         * First Container
         */
        Container(
          width: size.width * 0.44,
          // yo padding la height ko kam pani garxa

          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(AppLayout.getHeight(20))),
          ),
          child: Center(
            child: Text(
              first,
              style: Styles.headLineStyle3.copyWith(color: Colors.grey[700]),
            ),
          ),
        ),

        Gap(AppLayout.getWidth(5)),

        /**
         * Second Container
         */
        Container(
          width: size.width * 0.44,
          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(AppLayout.getHeight(20))),
          ),
          child: Center(
            child: Text(
            second,
              style: Styles.headLineStyle3.copyWith(color: Colors.grey[700]),
            ),
          ),
        )
      ],
    );
  }
}
