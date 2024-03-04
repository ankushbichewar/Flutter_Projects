import 'package:flutter/material.dart';

class Assinment4 extends StatelessWidget{
  const Assinment4({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        backgroundColor: Colors.blue,
        centerTitle: true,
       shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
       )
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration( 
            color: Colors.blue,
            border: Border.all(
            width: 10,
            color: Colors.red
            )
          ),
        ),
      ),
    );
  }
}