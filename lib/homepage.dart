import 'package:flutter/material.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("MOBILE INVENTORY")),
            drawer: DrawerPage(),
            body: Container(
                child: Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: FlatButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("View Product"))),
              Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: FlatButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Add Product"))),
              Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: FlatButton(
                      color: Colors.green,
                      onPressed: () {},
                      child: Text("Update Product"))),
            ]))));
  }
}
