import 'package:figmaStaff/screens/bottom_nav_screens/search_screen/search_screen.dart';
import 'package:figmaStaff/screens/bottom_nav_screens/staffs_screen/ListOfEmployees.dart';
import 'package:figmaStaff/styles/colors.dart';
import 'package:figmaStaff/styles/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'directory_screens/directory_screen.dart';
import 'news_screen/news_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final List screenList = [
    DirectoryScreen(),
    SearchScreen(),
    NewsScreen(),
    Employers(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: ColorsText.black,
          selectedItemColor: ColorsText.blue,
          backgroundColor: Colors.yellow,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Справочник'),
            BottomNavigationBarItem(icon: Icon(Icons.details), label: 'Поиск'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Новости'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Сотрудники'),
          ]),
    );
  }
}
