import 'package:flutter/material.dart';

class MyDecorationcolor extends StatelessWidget{
  const MyDecorationcolor({super.key});


  Widget build(BuildContext context){
    return Scaffold(
       body: Container(
    
     height: 200,
     width: 200,
     decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      border: Border.all(
        color: Colors.blue,
        width: 5,
      ),
      boxShadow: const[
        BoxShadow(
          color: Colors.purple,
          offset: Offset(30, 30),
          blurRadius: 8,
        ),
        BoxShadow(
          color: Colors.red,
          offset: Offset(30, 30),
          blurRadius: 8,
        ),
        BoxShadow(
          color: Colors.purple,
          offset: Offset(30, 30),
          blurRadius: 8,
        )
      ]
      
     ),
    ),
    );
  }
}