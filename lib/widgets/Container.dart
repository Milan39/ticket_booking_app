import 'package:flutter/material.dart';

class MyContiner extends StatelessWidget {
  final bool? isColor;
  const MyContiner({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: isColor==null?Colors.white: Color(0xFF8ACCF7)),
        shape: BoxShape.circle
      ),
    );
  }
}