import 'package:flutter/material.dart';
import 'drawer.dart';
import 'viewproduct.dart';
import 'addproduct.dart';
import 'updateproduct.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("MOBILE INVENTORY")),
            drawer: DrawerPage(),
        body: Container(
            child: Column(children: [

              //View Product
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 20.0),
                child: SizedBox(
                  width: double.infinity,
                    child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ViewProductPage()));},
                      child: Text("View Product")))),

              //Add Product
            Padding(
              padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddProductPage()));},
                    child: Text("Add Product")))),

              //Update Product
            Padding(
              padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    color: Colors.green,
                      onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProductPage()));},
                      child: Text("Update Product")))),
            ]
            )
            )
            )
            );
  }
}
