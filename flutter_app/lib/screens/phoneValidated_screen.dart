import 'package:flutter/material.dart';

class PhoneValidatedScreen extends StatefulWidget {
  static const String id = "phone_validated_screen";
  @override
  _PhoneValidatedScreenState createState() => _PhoneValidatedScreenState();
}

class _PhoneValidatedScreenState extends State<PhoneValidatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Validado")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/phone_validated.jpg"),
          Center(child: Text("Número de teléfono validado",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightBlue[900],
          ),)),
          SizedBox(height: 60.0,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.android),
        onPressed: (){

        },
      ),
    );
  }
}
