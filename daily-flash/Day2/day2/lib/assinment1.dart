import 'package:flutter/material.dart';

class Assinment1 extends StatelessWidget{
  const Assinment1({super.key});


  @override
  Widget build(BuildContext context){

    return Scaffold( 
        appBar: AppBar(
          title: const Text("Daily-Flash"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration( 
              border: Border.all(
                width: 10,
                color: Colors.red
              ),
              borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight:  Radius.circular(20),
                bottomLeft:  Radius.circular(20),
                bottomRight:  Radius.circular(20),
              )
            ),
            alignment: Alignment.center,
            child:const Text("In container"),
          ),
        ),
    );
  }
}