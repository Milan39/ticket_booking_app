import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../../utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class MyBarcode extends StatelessWidget {
  const MyBarcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
        child: BarcodeWidget(
          barcode: Barcode.code128(),
          data: 'https://github.com/Milan39',
          height: 50,
          drawText: false,
          color: Styles.textColor,
        ),
      ),
    );
  }
}