import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'dart:async';
import 'jsonmodels/Products.dart';

class AddProductForm extends StatefulWidget{
   _AddFormState createState() => _AddFormState();
 }

 class _AddFormState extends State<AddProductForm>{
   final _formKey = GlobalKey<FormState>();
   final _nameCtrl = TextEditingController();
   final _priceCtrl = TextEditingController();
   final _qtyCtrl = TextEditingController();
   final LocalStorage _inv = LocalStorage('inventorydemo');
   final ProductList _products = ProductList();


   @override
   dispose(){
     _nameCtrl.dispose();
     _priceCtrl.dispose();
     _qtyCtrl.dispose();
     super.dispose();
   }

   @override
   initState(){
     super.initState();
     _loadData();
   }

   _loadData() async{
     await _inv.ready;

     //_inv.clear();
     if(_inv.getItem('products') == null){
       _inv.setItem('products', _products.toJsonEncodable());
     }

     else{
       _products.toList(_inv.getItem('products'));
     }
    

   }

   @override
   Widget build(BuildContext context){
     return Form(
         key: _formKey,
         child: Column(children: [


           TextFormField(
             controller: _nameCtrl,
             decoration: InputDecoration(
             border: OutlineInputBorder(), 
                labelText: "Product Name"),
           ),

           TextFormField(
             controller: _priceCtrl,
             decoration: InputDecoration(
             border: OutlineInputBorder(), 
                labelText: "Product Price"),
           ),

           TextFormField(
             controller: _qtyCtrl,
             decoration: InputDecoration(
             border: OutlineInputBorder(), 
                labelText: "Quantity"),
           ),


           ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green[300])),
                child: Text("ADD PRODUCT",
                          style: TextStyle(color: Colors.black)),
              onPressed: ( ) async{
                await _inv.ready;
                int len, id;
                
                len = _products.prodItems.length;

                if(len > 0){
                  id = _products.prodItems[len - 1].id + 1;
                }
                else{
                  id = 1;
                }
                Products data = Products(id:id, name:_nameCtrl.text, price:_priceCtrl.text, qty:_qtyCtrl.text);
                _products.prodItems.add(data);
                _inv.setItem('products', _products.toJsonEncodable());
                print('${_inv.getItem('products')}');
              })]));}}