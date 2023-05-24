import 'package:flutter/material.dart';

import 'awerness.dart';
import 'dignosistest/testmain.dart';
import 'gameslist.dart';

class nav extends StatefulWidget {
  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    games(),
    test(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
          title: const Text('             تـعلم', textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Cairo',fontSize: 30,)),
          
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb),
              label: 'توعية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.games),
              label: 'الألعاب',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sticky_note_2),
              label: 'التشخيص',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const awar();
  }
}

class games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const gameslist();
  }
}

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return testmain();
  }
}
