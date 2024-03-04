import 'package:flutter/material.dart';

class Assinment2 extends StatelessWidget{
  const Assinment2({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title:const  Text("Assinment1 Day 3"),
      ),
      body: Center(child:  
      Container(
        height: 300,
        width: 300,
        color: const Color.fromARGB(255, 48, 174, 41),
        padding:const EdgeInsets.all(10),
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmxxiiyvmAZJovRUKSzYkhXcZ-A6mxsDj3XkfHPWuasg&s"),
      )
      ),
    );
  }
}