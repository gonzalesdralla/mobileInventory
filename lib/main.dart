import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp(MobileInventory());
}

class MobileInventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Mobile Inventory demo", home: LoginPage());
  }
}
