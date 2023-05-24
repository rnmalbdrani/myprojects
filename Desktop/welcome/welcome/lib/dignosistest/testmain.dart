import 'package:welcome/dignosistest/constant.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class testmain extends StatefulWidget {
  @override
  _testmainpState createState() => _testmainpState();
}

class _testmainpState extends State<testmain> {
  @override
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 70),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(3, 2),
                    blurRadius: 12)
              ],
              color: kPrimaryColor,
              border: Border.all(
                color: const Color.fromARGB(0, 254, 254, 254),
                width: 1,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(22.0),
              child: Text(
                "   هذا التشخيص يساعد في لفت الانتباه لأعراض اضطراب التوحد لدى الأطفال عن طريق الإجابة على بعص الاسئلة الاساسية والتي من خلال الاجابة عليها تظهر نتيجة التشخيص بإحتمالية  وجود اضطراب توحد لدى الطفل أم لا. هذه الاسئلة تم انشائها بمساعدة خبراء تحليل بيانات و مبنيه على بيانات 1054 طفل ممن لديهم أعراض اضطراب التوحد وتمت تجربة هذه الاسئلة عليهم لتحديد مدى دقتها",
                style: TextStyle(
                    fontFamily: 'Cairo',
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 19),
                textAlign: TextAlign.right,
              ),
            )),
        Container(
          margin: const EdgeInsets.only(top: 40),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(disabledForegroundColor: kPrimaryColor.withOpacity(0.38)
                // foregroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen2()));
            },
            child: const Text('انتقل الى التشخيص'),
          ),
        )
      ],
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool agree = false;
  final _questions = const [
    {
      'questionText': 'هل ينظر طفلك إليك عندما تنادي اسمه/ اسمها؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText': 'هل هنالك  سهولة في التواصل البصري مع طفلك؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText':
          ' هل يشير طفلك عندما يريد شيئا ما(مثلا يريد لعبة او حلوى )؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText':
          ' (مثلا يقوم بالتأشير على منظر ممتع ومثير لاهتمامه)هل يقوم طفلك بالتأشير ليشارك الاخرين اهتمامه او متعته   ',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText':
          'هل طفلك يتظاهر باللعب(لعب تخيلي) على سبيل المثال العناية بالدمى أو التحدث على هاتف لعبة؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText': 'هل  طفلك يستطيع أن يتابع بنظره أينما تنظر ؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText':
          'إذا كنت أنت أو أي شخص آخر في الأسرة منزعجًا بشكل واضح ،  هل يبدي طفلك رغبته لمواساة المنزعج على سبيل المثال المسح على الشعر ، معانقته؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText': ': هل تصف الكلمات الأولى لطفلك على النحو التالي  ',
      'answers': [
        {'text': '  نموذجية جدا', 'score': 1},
        {'text': '  نموذجية تماما', 'score': 1},
        {'text': '   غير عادية بشكل طفيف', 'score': 0},
        {'text': 'غير عادية جدا', 'score': 0},
        {'text': 'لا يتكلم طفلي', 'score': 0},
      ],
    },
    {
      'questionText': 'هل يستخدم طفلك إيماءات بسيطة (مثل الوداع)؟',
      'answers': [
        {'text': 'دائما', 'score': 0},
        {'text': 'غالبا', 'score': 0},
        {'text': 'بعض الأحيان', 'score': 1},
        {'text': 'نادرا', 'score': 1},
        {'text': 'ابدا', 'score': 1},
      ],
    },
    {
      'questionText': 'هل يحدق طفلك في أي شيء دون غرض واضح؟',
      'answers': [
        {'text': 'دائما', 'score': 1},
        {'text': 'غالبا', 'score': 1},
        {'text': 'بعض الأحيان', 'score': 0},
        {'text': 'نادرا', 'score': 0},
        {'text': 'ابدا', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('تعلـم'),
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}


//Padding

