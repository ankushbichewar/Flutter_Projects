import 'package:flutter/material.dart';

class Assinment4 extends StatelessWidget{
  const Assinment4({super.key});


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
            width: 400,
            decoration: BoxDecoration( 
              color: Colors.amberAccent,
              border: Border.all(
                width: 10,
                color: Colors.red
              ),
              borderRadius:const BorderRadius.only(
                topRight:  Radius.circular(30),
                bottomLeft: Radius.circular(30)
              )
            ),
            alignment: Alignment.center,
            child:const Text("In container"),
          ),
        ),
    );
  }
}