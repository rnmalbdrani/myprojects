// ignore_for_file: avoid_print

import 'package:welcome/dignosistest/constant.dart';
import 'package:flutter/material.dart';

import 'package:welcome/nav.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore > 3) {
      resultText = 'هناك سمات محتملة لاضطراب طيف التوحد';

      print(resultScore);
    } else {
      resultText = 'ليس هناك سمات محتملة لأضطراب طيف التوحد';

      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Text
            Text(
              'نتيجة الطفل ' '$resultScore',
              style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontFamily: 'Cairo'),
              textAlign: TextAlign.center,
            ),
            Text(
              resultPhrase,
              style: const TextStyle(
                color: Color.fromARGB(186, 43, 37, 80),
                fontSize: 26,
                fontWeight: FontWeight.w200,
                fontFamily: 'Cairo',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50.0,
            ), //Text
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: resetHandler,
              child: Container(
                color: kPrimaryColor,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'إعادة الأختبار',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Cairo', fontSize: 16),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 80),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  disabledForegroundColor: const Color.fromARGB(255, 221, 115, 243).withOpacity(0.38),
                  // foregroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => nav()));
                },
                child: const Text(' خروج'),
              ),
            )
            // FlatButton is deprecated and should not be used
            // Use TextButton instead

            // FlatButton(
            // child: Text(
            //	 'Restart Quiz!',
            // ), //Text
            // textColor: Colors.blue,
            // onPressed: resetHandler(),
            // ), //FlatButton
          ], //<Widget>[]
        ),
      ), //Column
    ); //Center
  }
}
