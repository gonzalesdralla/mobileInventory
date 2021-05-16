import 'package:flutter/material.dart';


class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, 
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey),
            child: Text("Mobile Inventory")),

          ListTile(
            title: Text("View Product"),
            onTap: () {Navigator.pushNamed(context, '/viewproduct');}),

          ListTile(
            title: Text("Add Product"),
            onTap: () {
              //Navigator.pushNamed(context, '/addproduct');
              }),
          
          /*ListTile(
            title: Text("Update Product"),
            onTap: () {Navigator.pushNamed(context, '/updateproduct');}),*/
      
          ListTile(
            title: Text("Log Out"),
            onTap: () {Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false);}
            )
    ]));
  }
}
