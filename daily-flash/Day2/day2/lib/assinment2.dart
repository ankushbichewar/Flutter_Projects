import 'package:flutter/material.dart';

class Assinment2 extends StatelessWidget{
  const Assinment2({super.key});


  @override
  Widget build(BuildContext context){

    return Scaffold( 
        appBar: AppBar(
          title: const Text("Daily-Flash"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            padding:const EdgeInsets.all(10),
            decoration:const BoxDecoration( 
              color: Colors.amber,
              border: Border(
                left: BorderSide(width: 5,
                color: Colors.red
                )
              ),
             
            ),
            alignment: Alignment.center,
            child:const Text("container"),
          ),
        ),
    );
  }
}