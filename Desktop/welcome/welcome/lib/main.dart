import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:welcome/constant.dart';
import 'services/auth.dart';
import 'models/FirebaseUser.dart';
import 'screens/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color.fromRGBO(120, 108, 249, 0.38),
          buttonTheme: ButtonThemeData(
            buttonColor: kPrimaryLightColor,
            textTheme: ButtonTextTheme.primary,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
          ),
          fontFamily: 'Cairo',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Cairo'),
          ),
        ),
        home: Wrapper(),
      ),
    );
  }
}
