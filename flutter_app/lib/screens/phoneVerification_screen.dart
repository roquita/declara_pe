import 'package:flutter/material.dart';
import 'package:flutterapp/screens/phoneValidated_screen.dart';

class PhoneVerificationScreen extends StatefulWidget {
  static const String id = "phone_verification_screen";
  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verificación"),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 15.0, left: 15.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Ingrese el código de verificación",
              style: TextStyle(
                letterSpacing: 1.5,
                wordSpacing: 2.0,
                fontSize: 15.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Colors.deepOrange, fontSize: 20.0, letterSpacing: 1.0),
              showCursor: false,
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
                hintText: "- - - - -",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("¿No recibió ningún SMS?. ",
                style: TextStyle(
                  letterSpacing: 0.5
                ),),
                Text("Volver a enviar",
                style: TextStyle(
                  color: Colors.pink,
                  letterSpacing: 0.5
                ),)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.pushNamed(context, PhoneValidatedScreen.id);
        },
      ),
    );
  }
}
