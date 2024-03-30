import 'package:flutter/material.dart';

class Assinment3 extends StatelessWidget{
  const Assinment3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text("DailyFlash"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
       body: Padding(padding: const EdgeInsets.only(
        top: 150,
        bottom: 150,
        left: 60,
        right: 60,
       ),
       child:Column( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 70,
                width: 100,
                color: Colors.purple,
              )
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 70,
                width: 100,
                color: Colors.green,
              )
            ],
          )
        ],
       ),
       )
      );
  }
}