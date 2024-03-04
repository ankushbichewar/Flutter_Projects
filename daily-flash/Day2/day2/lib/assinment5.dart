import 'package:flutter/material.dart';
 bool istouch=false;
class Assinment5 extends StatefulWidget{
   const Assinment5({super.key});
   
     @override
     State<StatefulWidget> createState()=>_Assiment5state();
}

class _Assiment5state extends State {
  

  Color onchangecolor(){
    if(istouch==true){
      return Colors.yellow;
    }else{
      return Colors.green;
    }
  }

  Text onchangetext(){
    if(istouch==true){
      return const  Text("Tapped Container");
    }else{
      return const Text("click me !");
    }
  }

  @override
  Widget build(BuildContext context){

    return Scaffold( 
        appBar: AppBar(
          title: const Text("Daily-Flash"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          
            child: GestureDetector(
              onTap: () { 
                setState(() {
                  istouch=true;
                });
               },
              child: Container(
                color: onchangecolor(),
                height: 300,
                width: 300,
                alignment: Alignment.center,
                child:onchangetext()
              ),
            ),
          
        ),
    );
  }
}