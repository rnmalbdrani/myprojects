import 'package:flutter/material.dart';

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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const SizedBox(
            width: 500.0,
            height: 20.0,
          ),
          Container(
              width: 395,
              height: 180,
              // ignore: sort_child_properties_last
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "متى تظهر أعراض اضطراب طيف التوحد؟"
                  "\nتظهر أعراض اضطراب طيف التوحد عادة في عمر السنتين إلى الثلاث سنوات",
                  style: TextStyle(
                      fontFamily: 'Cairo', color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.right,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(14),
                ),
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
          const SizedBox(
            width: 200.0,
            height: 50.0,
          ),
          Container(
              width: 395,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(14),
                ),
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
                      fontFamily: 'Cairo', color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.right,
                ),
              )),
          const SizedBox(
            width: 200.0,
            height: 50.0,
          ),
          Container(
              width: 395,
              height: 340,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
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
                      fontFamily: 'Cairo', color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.right,
                ),
              ))
        ],
      ),
    ); // Column
  }
}
