import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment5 extends StatelessWidget{
   const Assinment5({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        centerTitle:true,
        actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("im1"),
          Image.asset("im2")
        ],
      )),
    );

   }
}