import 'package:flutter/material.dart';
import 'AddProductForm.dart';

class AddProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Add Product"),
        ),
        body: Container(
          child: SingleChildScrollView(
        child: Column( children: [AddProductForm()]))
        )
      );
  }
}

 