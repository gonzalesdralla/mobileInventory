import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class ViewProductPage extends StatelessWidget{
  final _prodItem = List<String>.generate(15, (i) => "Product ${i+1}");
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text("Product Details")),

        body: ListView.builder(
          itemCount: _prodItem.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text('${_prodItem[index]}'),
                onTap: (){
                  //Navigator.pushNamed(context, '/updateproduct');
                  }));
            }
          ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //Navigator.pushNamed(context, '/addproduct');
          }
      ,
    ),
  );
    
  }
}