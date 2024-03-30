import 'package:flutter/material.dart';

class Assinment4 extends StatelessWidget{
  const Assinment4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text("DailyFlash"),
          backgroundColor: Colors.blue,
        ),
       body: Center(
        child: Container(
          height: 170,
          width: 350,
          decoration: BoxDecoration( 
            border: Border.all(width: 3),
          ),
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 130,
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration( 
            border: Border.all(width: 3,
            ),
          ),     
           child: Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
              ),
              Container(
                height: 100,
                width: 130,
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration( 
            border: Border.all(width: 3),
          ),
          child: Container(
            height: 50,
            width: 50,
            color: Colors.purple,
          ),
              )
            ],
          ),
        ),
       )
      );
  }
}