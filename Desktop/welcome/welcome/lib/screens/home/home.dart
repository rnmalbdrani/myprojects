import 'package:welcome/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final SignOut = IconButton(
      icon: const Icon(Icons.logout),
      onPressed: () async {
        await _auth.signOut();
      },

      //body:
      //Center(child: SignOut);
    );
    return Scaffold(
      //  drawer: BottomNavBar(),
      appBar: AppBar(
        title: const Text("تعلم"),
      ),
      body: Center(child: SignOut), // AppBar
      // App body consists of single Column
      // Column consists of three children widgets
    );
  }
}
