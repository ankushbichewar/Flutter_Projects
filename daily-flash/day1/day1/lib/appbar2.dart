import 'package:flutter/material.dart';

class Appbartwo extends StatelessWidget{
  const Appbartwo({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        centerTitle: true,
        leading:const Icon(Icons.home),
        backgroundColor: Colors.amber,
        actions:const [Icon(Icons.person_2_rounded),
        Icon(Icons.near_me),
        Icon(Icons.wifi),
        ],
      ),
    );
  }
}