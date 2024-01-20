import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment6 extends StatelessWidget{
   const Assinment6({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle:true,
        actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
      body: Center(child:
      SingleChildScrollView(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(height: 120,width: 100,color: Colors.red,),
          Container(height: 120,width: 100,color: Colors.yellow,),
          Container(height: 100,width: 100,color: Colors.black,),
          Container(height: 100,width: 100,color: Colors.blue,),
          Container(height: 100,width: 100,color: Colors.orange,),
          Container(height: 100,width: 100,color: Colors.green,),
          Container(height: 100,width: 100,color: Colors.purple,),
          Container(height: 100,width: 100,color: Colors.pinkAccent,),
          Container(height: 100,width: 100,color: Colors.lightGreenAccent,),
          Container(height: 100,width: 100,color: Colors.lime,),
        ],)
      ),
      ),
    );
   }
}