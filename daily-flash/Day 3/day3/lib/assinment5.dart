import 'dart:ui';

import 'package:flutter/material.dart';

class Assinment5 extends StatefulWidget{
  const Assinment5({super.key});

 @override
  State createState() => _Assinment5State();
}

class _Assinment5State extends State {
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
        title:const  Text("Assinment5 Day 3"),
      ),
      body: Center(
        child: Container( 
          height: 300,
          width: 300,
          decoration:const BoxDecoration( 
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(300)),
          gradient:LinearGradient(
            colors: [Colors.red,Colors.blue],
           stops: [0.5,0.5]
            )
          ),
        ),
      ),
    );
  }
}