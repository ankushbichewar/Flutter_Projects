import 'package:flutter/material.dart';

class Appbarone extends StatelessWidget{
  const Appbarone({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        centerTitle: true,
        leading:const Icon(Icons.home),
        backgroundColor: Colors.amber,
        actions:const [Icon(Icons.person_2_rounded),],
      ),
    );
  }
}