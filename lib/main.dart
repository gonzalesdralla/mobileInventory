import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'addproduct.dart';
import 'drawer.dart';
import 'homepage.dart';
import 'updateproduct.dart';
import 'viewproduct.dart';

void main() {
  runApp(MobileInventory());
}

class MobileInventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Mobile Inventory demo", 
    initialRoute: '/',
    routes:{
      '/':(context) => LoginPage(),
      '/homepage':(context) => HomePage(),
      'drawer':(context) => DrawerPage(),
      '/addproduct':(context) => AddProductPage(),
      '/viewproduct':(context) => ViewProductPage(),
      '/updateproduct':(context) => UpdateProductPage()
    }
    
    );
  }
}
