import 'package:flutter/material.dart';
import 'loginpage.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
          decoration: BoxDecoration(color: Colors.grey),
          child: Text("Mobile Inventory")),
      ListTile(
          title: Text("Add Prodcut"),
          onTap: () {
            Navigator.pop(context);
          }),
      ListTile(
          title: Text("Edit Prodcut"),
          onTap: () {
            Navigator.pop(context);
          }),
      ListTile(
          title: Text("Update Prodcut"),
          onTap: () {
            Navigator.pop(context);
          }),
      ListTile(
          title: Text("Log Out"),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          })
    ]));
  }
}
