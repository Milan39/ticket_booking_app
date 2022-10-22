import 'package:flutter/material.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class First_Part_SearchScreen extends StatelessWidget {
  const First_Part_SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'What are\nyou looking for?',
      style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(35)),
    );
  }
}
