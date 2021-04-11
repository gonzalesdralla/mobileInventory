import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Add Product"),
        ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Product Name"),
              autofocus: true)),

            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Product Price"))),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Product Quantity"))),
            FlatButton(
              color: Colors.green[300],
              onPressed: () {},
                child: Text("Add Product"))
          ])
    )));
  }
}