import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:sound/HomePage.dart';

class WhatIfeel extends StatelessWidget {
  const WhatIfeel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardColor: Colors.transparent,

        //primarySwatch: Colors.blue,
      ),
      home: const sound(),
    );
  }
}

class sound extends StatelessWidget {
  const sound({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("meow"),
        ),
        body: SafeArea(
            child: Stack(children: <Widget>[
          Positioned(
              top: -1.408605933189392,
              left: 2.5274441242218018,
              child: Container(
                width: 400,
                height: 640,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 80,
                      left: 0,
                      child: Container(
                          width: 300,
                          height: 80,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            color: Color.fromRGBO(165, 127, 255, 1),
                          ))),
                  Positioned(
                      top: 190,
                      left: 40,
                      child: Container(
                          width: 340,
                          height: 260,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Image5.jpg'),
                                fit: BoxFit.fitWidth),
                          ))),
                  Positioned(
                      top: 95,
                      left: 6,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Cairo',
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.6)),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('refuse_.mp3');
                        },
                        child: const Text('لماذا يرفض سلطان إكمال طعامه؟'),
                      )),
                  Positioned(
                    top: 480,
                    left: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('anger.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: Image.asset(
                        "assets/Image6.jpg",
                        height: 80,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 480,
                    left: 153,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('sad.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: Image.asset(
                        "assets/Image7.jpg",
                        height: 80,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 480,
                    left: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        borderRadius:
                        BorderRadius.circular(40.0);

                        final player = AudioCache();
                        player.play('sick.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),

                        // Set padding
                      ),
                      child: Image.asset(
                        "assets/Image8.jpg",
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ]),
              ))
        ])));
  }
}
