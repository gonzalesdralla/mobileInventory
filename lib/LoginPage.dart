import 'package:flutter/material.dart';
import 'LoginPageState.dart';



class LoginPage extends StatelessWidget{
  Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 20.0),
              child: Container(
                color: Colors.green[300],
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                child: Text("Mobile Inventory"))),
                
            LoginPageState(),]
        )
      )
    )
    
  );
}
}






