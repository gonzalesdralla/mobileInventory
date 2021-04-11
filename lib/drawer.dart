import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'viewproduct.dart';
import 'addproduct.dart';
import 'updateproduct.dart';

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
            title: Text("View Prodcut"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => ViewProductPage()));}),

          ListTile(
            title: Text("Add Prodcut"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddProductPage()));}),
          
          ListTile(
            title: Text("Update Prodcut"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => UpdateProductPage()));}),
      
          ListTile(
            title: Text("Log Out"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));})
    ]));
  }
}
