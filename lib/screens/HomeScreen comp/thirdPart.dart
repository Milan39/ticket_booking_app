import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';

class ThirdPart extends StatefulWidget {
  const ThirdPart({super.key});

  @override
  State<ThirdPart> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<ThirdPart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcomming Flights',
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: (){
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
