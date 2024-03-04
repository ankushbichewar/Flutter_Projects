import 'package:flutter/material.dart';

class Assinment3 extends StatefulWidget{
  const Assinment3({super.key});

 @override
  State createState() => _Assinment3State();
}

class _Assinment3State extends State {
 bool colorchange=true;
Color bordercolor(){

  if(colorchange==true){
    return Colors.red;
  }else{
    return Colors.green;
  }
}

   @override
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title:const  Text("Assinment1 Day 3"),
      ),
      body: Center(child:  
      GestureDetector(
        onTap: () {
          setState(() {
            colorchange=false;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration( 
            color: Colors.blue,
            border: Border.all(
              width: 10,
              color: bordercolor(),
            )
          ),
         
        ),
      )
      ),
    );
  }
}