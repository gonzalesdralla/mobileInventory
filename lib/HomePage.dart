import 'package:flutter/material.dart';
//import 'drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("MOBILE INVENTORY")),
            //drawer: DrawerPage(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(children: [

              //View Product
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
                child: SizedBox(
                  width: double.infinity,
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        //Navigator.pushNamed(context, '/viewproduct');
                        },
                      child: Text("View Products")))),

              //Add Product
            Padding(
              padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      //Navigator.pushNamed(context, '/addproduct');
                      },
                    child: Text("Add Product")))),
            ]
            )
            )
            )
    ));
  }
}
