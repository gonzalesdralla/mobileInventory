import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 20.0),
              child: Text("Mobile Inventory")),

            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Username"),
              autofocus: true)),

            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), 
                  labelText: "Password"))),

            FlatButton(
              color: Colors.green[300],
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                child: Text("LOGIN"))
            ]
          )
        )
      );
  }
}
