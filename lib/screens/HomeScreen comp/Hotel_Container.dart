// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';
import '../../utils/app_Layout.dart';

class Hotel extends StatefulWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  State<Hotel> createState(){
    return Hotel_Screen();
  }
}



class Hotel_Screen extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Container(
      width: Size.width * 0.6,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      margin: EdgeInsets.all(10),
      height: 380,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/Images/${widget.hotel['ImagePath']}'))),
          ),
          Gap(10),
          Text(
            widget.hotel['Name'],
            style: Styles.headLineStyle2.copyWith(color: Styles.LightGrey),
          ),
          Gap(5),
          Text(widget.hotel['Place'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          Gap(8),
          Text(
            '\$''${widget.hotel['price']}/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.LightGrey),
          ),
          Gap(5),
          Text(widget.hotel['Slogon'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          
        ],
      ),
    );
  }
}