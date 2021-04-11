import 'package:flutter/material.dart';

class UpdateProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Update Product"),
        ),
      body: Center(
        
        child: Text("Please display products in list tile with 'edit' button next to it")
      ),
      
      )
    );
  }
}