import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assinment3 extends StatelessWidget{
   const Assinment3({super.key});

   Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Core2Web"),
        actions: [Icon(Icons.home),SizedBox(width: 20,),Icon(Icons.favorite_border_sharp)],
      backgroundColor: Colors.black,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.blue,
          )
        ],
      ),
        
      ),
    );
   }
}