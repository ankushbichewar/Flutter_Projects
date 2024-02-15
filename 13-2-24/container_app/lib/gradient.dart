import 'package:flutter/material.dart';

class MyGradient extends StatelessWidget{

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
     gradient: const LinearGradient(
      stops: [0.3,0.5],
      colors: [Colors.red,Colors.green]
     )
      
     ),
    ),
    );
  }
}