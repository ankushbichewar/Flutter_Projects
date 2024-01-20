import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment2 extends StatelessWidget{
   const Assinment2({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle:true,
        actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
    );
   }
}