import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment4 extends StatelessWidget{
   const Assinment4({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle:true,
        actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
      body: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(height: 100,width: 100,color: Colors.red,),
          Container(height: 100,width: 100,color: Colors.yellow,),
        ],)
      ),
    );
   }
}