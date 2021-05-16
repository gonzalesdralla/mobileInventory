import 'package:flutter/material.dart';
//import 'HomePage.dart';

@override
class LoginPageState extends StatefulWidget {
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<LoginPageState>{
  final _formKey = GlobalKey<FormState>();
  final _username = "a";
  final _password = "1";
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
   dispose(){
      usernameController.dispose();
      passwordController.dispose();
      super.dispose();
   }

   @override
   initState(){
     super.initState();
   }

 
  @override
  Widget build(BuildContext context) {
    return Form(
          key: _formKey,
          child: Column(children: [
            //USERNAME
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 20.0),
                child:TextFormField(
                autofocus: true,
                controller: usernameController,
                decoration: InputDecoration(
                border: OutlineInputBorder(), 
                labelText: "Username"),
                validator: (value){
		            if (value.isEmpty  || value != _username){
                  return "Input correct username";}

                return null;
                })),

            //PASSWORD
            Padding(
              padding: EdgeInsets.all(20.0),
                child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                border: OutlineInputBorder(), 
                labelText: "Password"),
                validator: (value){
		            if (value.isEmpty || value != _password){
                  return "Input correct password";}

                return null;
                })),

            //LOGIN
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green[300])),
                child: Text("LOGIN",
                          style: TextStyle(color: Colors.black)),
              onPressed: ( ) {
                if(_formKey.currentState.validate()){Navigator.pushNamedAndRemoveUntil(context, '/homepage', (Route<dynamic> route) => false);}
              },
                )
            ]
          )
        ); 
      
  }

  
}