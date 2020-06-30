import 'package:flutter/material.dart';
import 'package:flutterapp/screens/phoneVerification_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("  "),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Bienvenido a Declara RUS",
              style: TextStyle(
                letterSpacing: 1.5,
                wordSpacing: 2.0,
                fontSize: 40.0,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              initialValue: "",
              maxLength: 9,
              cursorWidth: 5.0,
              cursorColor: Colors.deepOrange,
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
                letterSpacing: 1.0
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                prefixIcon: Icon(Icons.phone, color:  Colors.orange,),
                hintText: "Ingrese su número",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
                helperText: "Ex : 987654321",
                helperStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                height: 40.0,
                color: Colors.orangeAccent,
              ),
            ),
            Text(
              "Te enviaremos un mensaje con un código de verificación.",
              style: TextStyle(
                letterSpacing: 1.5,
                wordSpacing: 2.0,
                fontSize: 15.0,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(
              height: 40.0,
              color: Colors.orangeAccent,
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.navigate_next),
        onPressed: (){
          // move to next page
          Navigator.pushNamed(context, PhoneVerificationScreen.id);
        },
      ),
    );
  }
}
