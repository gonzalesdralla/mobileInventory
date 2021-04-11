import 'package:flutter/material.dart';

class ViewProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Product Details"),
        ),
      body: Center(
        child: Text("Please add products in list tile")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add)
      ),
      )
    );
  }
}