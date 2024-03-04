import 'package:flutter/material.dart';

class Appbarthree extends StatelessWidget{
  const Appbarthree({super.key});


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
    );
  }
}