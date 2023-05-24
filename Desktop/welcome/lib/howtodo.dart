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
        appBar: AppBar(
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: const Text('تعلـم'),
            backgroundColor: const Color.fromRGBO(120, 108, 249, 1)),
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

                  Positioned(
                      top: 95,
                      left: 6,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                                fontSize: 22,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Cairo',
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.6)),
                        onPressed: () {
                          final player = AudioCache();
                          player.play('howToWear.mp3');
                        },
                        child: const Text(
                          'كيف ارتدي جـواربي؟',
                          textAlign: TextAlign.right,
                        ),
                      )),
                  //  color: Color.fromRGBO(254, 173, 116, 1),
                  Positioned(
                    top: 200,
                    left: 280,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio00.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: Image.asset(
                        "assets/htd0.jpg",
                        height: 145,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 153,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio11.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd1.jpg'),
                        height: 145,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 23,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio22.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd2.jpg'),
                        height: 145,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 280,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio33.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd3.jpg'),
                        height: 145,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 153,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio44.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd4.jpg'),
                        height: 145,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 23,
                    child: ElevatedButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('audio55.mp3');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0), // Set padding
                      ),
                      child: const Image(
                        image: AssetImage('assets/htd5.jpg'),
                        height: 145,
                      ),
                    ),
                  ),
                ]),
              ))
        ])));
  }
}
