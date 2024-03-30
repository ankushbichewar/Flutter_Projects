import 'package:flutter/material.dart';

class Assinment5 extends StatefulWidget{
  const Assinment5({super.key});

@override
  State createState()=> _Assinment5State();
}

class _Assinment5State extends State{
  int count=0;
 Color mycolor(){
  if(count==1){
    return Colors.red;
  }
  else if(count==2){
    return Colors.red;
  }else if(count==3){
    return Colors.red;
  }
  else{
    return Colors.white;
  }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar( 
      title:const Text("Daily Flash"),
      backgroundColor: Colors.blue,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ 
        GestureDetector(
          onTap: () {
            setState(() {
              count=1;
            });
          },
          child: 
             Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration( 
              color: mycolor(),
              border: Border.all(width: 5)
            ),
          ),
          
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              count=2;
            });
          },
          child: 
             Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration( 
              color: mycolor(),
              border: Border.all(width: 5)
            ),
          ),
          
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              count=3;
            });
          },
          child: 
             Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration( 
              color: mycolor(),
              border: Border.all(width: 5)
            ),
          ),
          
        )
      ],
    ),

     );
  }
}