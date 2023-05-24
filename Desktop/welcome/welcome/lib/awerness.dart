import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class awar extends StatefulWidget {
  const awar({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _awarState createState() => _awarState();
}

class _awarState extends State<awar> {
  @override
  Widget build(BuildContext context) {
    // AppBar
    // App body consists of single Column
    // Column consists of three children widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
            width: 395,
            height: 120,
            // ignore: sort_child_properties_last
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "متى تظهر أعراض اضطراب طيف التوحد؟"
                "\nتظهر أعراض اضطراب طيف التوحد عادة في عمر السنتين إلى الثلاث سنوات",
                style: TextStyle(
                    fontFamily: 'Cairo', color: Colors.white, fontSize: 17),
                textAlign: TextAlign.right,
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4),
              ],
              color: const Color.fromRGBO(253, 138, 201, 0.699999988079071),
              border: Border.all(
                color: const Color.fromARGB(0, 254, 254, 254),
                width: 1,
              ),
            )),
        Container(
            width: 395,
            height: 185,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 2),
                    blurRadius: 4)
              ],
              color: const Color.fromRGBO(254, 173, 116, 0.699999988079071),
              border: Border.all(
                color: const Color.fromARGB(0, 254, 254, 254),
                width: 1,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "كيف أعرف أن طفلي من ذوي اضطراب التوحد؟"
                "\nوجود سلوكيات نمطية تكرارية تؤثر على إحساس الطفل بالمحيط الاجتماعي لديه، وتؤثر على إدراكه وفهمه للأشياء والمواقف.  "
                "\nعدم التواصل الاجتماعي الذي  يشمل :    التواصل البصري،التواصل اللفظي وغير اللفظي،التفاعل الاجتماعي",
                style: TextStyle(
                    fontFamily: 'Cairo', color: Colors.white, fontSize: 17),
                textAlign: TextAlign.right,
              ),
            )),
        Container(
            width: 395,
            height: 195,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4)
              ],
              color: Color.fromRGBO(165, 127, 255, 0.699999988079071),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "ماهي السمات والأعراض لذوي اضطراب طيف التوحد؟"
                " \nلايستجيب لطرق التدريس التقليدية - "
                "\nلا يستجيب للإيماءات اللفظية - "
                "\nضعف أو انعدام التواصل البصري-"
                "\n يفضل البقاء وحيدًا-"
                "\n لا يريد أن يحضن أحدًا أو أحدًا يحضنه-"
                "\n يلعب بطريقة غريبة ولمدة طويلة-",
                style: TextStyle(
                    fontFamily: 'Cairo', color: Colors.white, fontSize: 16),
                textAlign: TextAlign.right,
              ),
            ))
      ],
    ); // Column
  }
}

class Androidsmall6Widget extends StatefulWidget {
  @override
  _Androidsmall6WidgetState createState() => _Androidsmall6WidgetState();
}

class _Androidsmall6WidgetState extends State<Androidsmall6Widget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Androidsmall6Widget - FRAME

    return Container(
        width: 360,
        height: 640,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 360,
                  height: 640,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: -59,
                      left: -54,
                      child: SvgPicture.asset('assets/images/ellipse1.svg',
                          semanticsLabel: 'ellipse1'),
                    ),
                    Positioned(
                        top: 70,
                        left: 128,
                        child: Container(
                            width: 189,
                            height: 63,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(
                                  119, 107, 249, 0.3799999952316284),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(189, 63)),
                            ))),
                    Positioned(
                        top: 98,
                        left: 317,
                        child: Container(
                            width: 51,
                            height: 23,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(
                                  119, 107, 249, 0.3799999952316284),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(51, 23)),
                            ))),
                    Positioned(
                        top: 152,
                        left: 0,
                        child: Container(
                            width: 284,
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
                    const Positioned(
                        top: 25,
                        left: 123,
                        child: Text(
                          ' تعلّم  ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Itim',
                              fontSize: 36,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 84,
                        left: 17,
                        child: Text(
                          'توعية ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.pink,
                              fontFamily: 'Itim',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 86,
                        left: 123,
                        child: Text(
                          '    ألعاب تعليمية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Itim',
                              fontSize: 15,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 87,
                        left: 272,
                        child: Text(
                          'المساعدة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(
                                  255, 255, 255, 0.800000011920929),
                              fontFamily: 'Itim',
                              fontSize: 15,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 283,
                        left: 49,
                        child: Container(
                            width: 223,
                            height: 149,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image5.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    const Positioned(
                        top: 167,
                        left: 14,
                        child: Text(
                          'لماذا يرفض سلطان اكمال طعامه؟',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Itim',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 463,
                        left: 231,
                        child: Container(
                            width: 70,
                            height: 72.2151870727539,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image6.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 465,
                        left: 138,
                        child: Container(
                            width: 70,
                            height: 72.20125579833984,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image7.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 467,
                        left: 45,
                        child: Container(
                            width: 70,
                            height: 67.8125,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image8.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    const Positioned(
                        top: 554,
                        left: 212,
                        child: Text(
                          'غاضب',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Itim',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 553,
                        left: 144,
                        child: Text(
                          'حزين             ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Itim',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    const Positioned(
                        top: 554,
                        left: 17,
                        child: Text(
                          'مريض',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Itim',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 542,
                        left: 310,
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Image11.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 206,
                        left: 256,
                        child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Image12.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
        ]));
  }
}
