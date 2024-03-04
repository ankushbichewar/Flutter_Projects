import 'package:flutter/material.dart';

class Assinment5 extends StatelessWidget{
  const Assinment5({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration( 
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow:[
              BoxShadow(
                color: Colors.red,
                blurRadius: 20,
              )
            ]
          ),
        ),
      ),
    );
  }
}