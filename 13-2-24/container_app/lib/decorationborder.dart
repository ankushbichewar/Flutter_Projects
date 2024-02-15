import 'package:flutter/material.dart';

class MyDecorationcolor extends StatelessWidget{
  const MyDecorationcolor({super.key});


  Widget build(BuildContext context){
    return Scaffold(
       body: Container(
    
     height: 200,
     width: 200,
     decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      border: Border.all(
        color: Colors.blue,
        width: 5
      )
     ))
    );
  }
}