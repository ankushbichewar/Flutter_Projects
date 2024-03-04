import 'package:flutter/material.dart';

class Assinment4 extends StatefulWidget{
  const Assinment4({super.key});

 @override
  State createState() => _Assinment4State();
}

class _Assinment4State extends State {
 bool colorchange=true;
Color bordercolor(){

  if(colorchange==true){
    return Colors.red;
  }else{
    return Colors.green;
  }
}

   @override
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title:const  Text("Assinment1 Day 3"),
      ),
      body: Center(
        child: Container( 
          height: 200,
          width: 300,
          decoration:const BoxDecoration( 
            color: Colors.blue,
            boxShadow:  [ 
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 10,
                  offset: Offset(0, -10)
                )
            ]
          ),
        ),
      ),
    );
  }
}