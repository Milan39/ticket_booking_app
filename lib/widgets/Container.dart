import 'package:flutter/material.dart';

class MyContiner extends StatelessWidget {
  const MyContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white),
        shape: BoxShape.circle
      ),
    );
  }
}