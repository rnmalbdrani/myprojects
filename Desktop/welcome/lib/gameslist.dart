import 'package:flutter/material.dart';
import 'package:welcome/howtodo.dart';
import 'package:welcome/photos1.dart';
import 'package:welcome/whatifeel.dart';

class gameslist extends StatelessWidget {
  const gameslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const photos()),
                );
              },
              child: Container(
                width: 284,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(253, 138, 201, 0.699999988079071),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  ),
                ),
                child: const Text(
                  'رتــب الصور',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    height: 2,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            //Use of SizedBox
            height: 30,
          ),
          Card(
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HoToDo()));
                },
                child: Container(
                  width: 284,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(254, 173, 116, 0.699999988079071),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: const Text('كيف أفعــل',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        height: 2,
                        color: Colors.white,
                        fontSize: 25,
                      )),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Card(
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WhatIfeel()));
                },
                child: Container(
                    width: 284,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(165, 127, 255, 0.699999988079071),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: const Text('بمـاذا أشعر',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          height: 2,
                          color: Colors.white,
                          fontSize: 25,
                        )))),
          ),
        ],
      ),
    );
  }
}
