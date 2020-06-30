import 'package:flutter/material.dart';
import 'package:flutterapp/screens/welcome_screen.dart';
import 'package:flutterapp/screens/phoneVerification_screen.dart';
import 'package:flutterapp/screens/phoneValidated_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "declaraPe",
      color: Colors.orangeAccent,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context)=> WelcomeScreen(),
        PhoneVerificationScreen.id : (context)=>PhoneVerificationScreen(),
        PhoneValidatedScreen.id : (context) => PhoneValidatedScreen(),

      },
    );
  }
}
