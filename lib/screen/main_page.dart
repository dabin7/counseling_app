import 'package:flutter/material.dart';
import 'first.dart';
import 'fourth.dart';
import 'second.dart';
import 'third.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    // List of widgets/screens to display
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: '출근',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: '하루 글귀',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel),
            label: '토론',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: '내 정보',
          ),
        ],
      ),
    ),
    );
  }
}