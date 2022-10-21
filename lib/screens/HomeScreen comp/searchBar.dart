import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/Colors/Colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: TextField(
          cursorColor: Colors.black,
          cursorHeight: 20,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: Styles.headLineStyle3),
        ),
      ),
    );
  }
}