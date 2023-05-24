import 'package:flutter/material.dart';
import 'package:welcome/services/auth.dart';

import 'awerness.dart';
import 'dignosistest/testmain.dart';
import 'gameslist.dart';

class nav extends StatefulWidget {
  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  int _selectedIndex = 0;
  final AuthService _auth = AuthService();
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
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text('تعلـم',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 30,
              )),
          backgroundColor: const Color.fromRGBO(120, 108, 249, 1),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () async {
                await _auth.signOut();
              },
            )
          ],
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
