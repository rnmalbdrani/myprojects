import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../constant.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _email = TextEditingController();
  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _email.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content:
                  Text('   تحقق من بريدك الألكتروني لإعادة تعيين كلمة المرور '),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('تحقق من البريد الألكتروني المدخل'),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'ادخل بريدك الألكتروني ليتم إرسال رابط استعادة كلمة المرور',
                style: TextStyle(fontSize: 24, color: kPrimaryLightColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                    controller: _email,
                    autofocus: false,
                    validator: (value) {
                      if (value != null) {
                        if (value.contains('@') && value.endsWith('.com')) {
                          return null;
                        }
                        return 'أدخل عنوان بريد إلكتروني صالح';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "البريد الألكتروني",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22.0))))),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),
              onPressed: passwordReset,
              color: kPrimaryColor,
              child: const Text('إعادة تعيين كلمة المرور',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Cairo')),
            ),
          ],
        ));
  }
}
