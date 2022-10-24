// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:ticket_booking/screens/HomeScreen.dart';
import 'package:ticket_booking/screens/SearchScreen.dart';
import 'package:ticket_booking/screens/Ticket_Screen.dart';

import 'Profile_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    My_Profile_Screen()
  ];
  void selectedBottomNavigationBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOption[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          elevation: 0,
          onTap: selectedBottomNavigationBar,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Color(0xFF6699CC),
          unselectedItemColor: Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home,), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket), label: 'Ticket'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile')
          ]),
    );
  }
}
