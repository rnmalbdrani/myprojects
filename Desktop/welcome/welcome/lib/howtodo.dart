// ignore: depend_on_referenced_packages
//import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HoToDo extends StatelessWidget {
  const HoToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sound(),
    );
  }
}

// ignore: camel_case_types
class sound extends StatefulWidget {
  const sound({super.key});

  @override
  State<sound> createState() => _soundState();
}

class _soundState extends State<sound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
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
                            color: Color.fromRGBO(254, 173, 116, 1),
                          ))),
                  const Positioned(
                      top: 100,
                      left: 10,
                      child: Text(
                        '      كــيف أرتدي جواربـي؟ ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Cairo',
                            fontSize: 24,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1.6),
                      )),
                  Positioned(
                    top: 293,
                    left: 251,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio0.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: Image.asset(
                        "assets/htd0.jpg",
                        height: 90,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 292,
                    left: 145,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio1.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd1.jpg'),
                        height: 90,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 291,
                    left: 39,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio2.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd2.jpg'),
                        height: 90,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 403,
                    left: 251,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio3.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd3.jpg'),
                        height: 90,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 409,
                    left: 145,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio4.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd4.jpg'),
                        height: 90,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 405,
                    left: 37,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio5.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd5.jpg'),
                        height: 90,
                      ),
                    ),
                  ),
                ]),
              ))
        ])));
  }
}
