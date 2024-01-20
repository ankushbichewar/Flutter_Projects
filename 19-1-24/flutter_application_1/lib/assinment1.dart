import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment1 extends StatelessWidget{
   const Assinment1({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("MyApp"),actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
    );
   }
}