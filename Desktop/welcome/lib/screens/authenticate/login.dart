import 'package:welcome/constant.dart';
import 'package:welcome/models/loginuser.dart';
import 'package:welcome/services/auth.dart';
import 'package:flutter/material.dart';

import 'forgot_pw_page.dart';

class Login extends StatefulWidget {
  final Function? toggleView;
  const Login({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  bool _obscureText = true;

  final _email = TextEditingController();
  final _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
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
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "البريد الألكتروني",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(22.0))));
    final passwordField = TextFormField(
        obscureText: _obscureText,
        controller: _password,
        autofocus: false,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'هذه الخانة مطلوبه';
          }
          if (value.trim().length < 8) {
            return 'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل';
          }
          // Return null if the entered password is valid
          return null;
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "كلمة المرور",
            suffixIcon: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22.0),
            )));

    final txtbutton = TextButton(
      onPressed: () {
        widget.toggleView!();
      },
      child: const Text('ليس لديك حساب؟ سجل هنا',
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color.fromRGBO(120, 108, 249, 1),
              fontFamily: 'Cairo')),
    );
    final txtbutton1 = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ForgotPasswordPage();
            }));
          },
          child: const Text(
            '    نسيت كلمة المرور؟',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(120, 108, 249, 1),
                fontFamily: 'Cairo'),
          ),
        ),
      ]),
    );

    final loginEmailPasswordButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(22.0),
      color: Theme.of(context).primaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            dynamic result = await _auth.signInEmailPassword(
                LoginUser(email: _email.text, password: _password.text));
            if (result.uid == null) {
              //null means unsuccessfull authentication
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(result.code),
                    );
                  });
            }
          }
        },
        child: const Text(
          "تـسجيل الدخول",
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 15,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(120, 108, 249, 1),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            " تـعلـم ",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Cairo',
              color: kPrimaryLightColor,
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  emailField,
                  const SizedBox(height: 25.0),
                  passwordField,
                  txtbutton1,
                  loginEmailPasswordButon,
                  txtbutton,
                  const SizedBox(height: 35.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
