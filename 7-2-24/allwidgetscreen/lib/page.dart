import 'package:flutter/material.dart';

class Page extends StatefulWidget{

  State<Page> createState()=>_PageState();
  
}
class _PageState extends State<Page>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(title: Text("My Profile"),backgroundColor: Colors.blue,),
       body: Center(
        child: Column(children: [
          Text("Name : Ankush Bichewar"),
          Image.asset("assets/ankush.jpg"),
        ]),
       ),
       
    );
  }
}