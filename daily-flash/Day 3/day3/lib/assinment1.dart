import 'package:flutter/material.dart';

class Assinment1 extends StatelessWidget{
  const Assinment1({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title:const  Text("Assinment2 Day 3"),
      ),
      body: Center(child:  
      Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: Stack( 
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmxxiiyvmAZJovRUKSzYkhXcZ-A6mxsDj3XkfHPWuasg&s"),
            const Text("Core2Web")
          ],
        )
      )
      ),
    );
  }
}