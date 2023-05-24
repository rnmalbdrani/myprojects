import 'package:welcome/dignosistest/constant.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //this
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Container;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler, //this
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(
              color: kPrimaryColor,
              fontFamily: 'Cairo',
              fontSize: 18,
            )),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
        child: Text(answerText),
      ),
    );
  }
}
