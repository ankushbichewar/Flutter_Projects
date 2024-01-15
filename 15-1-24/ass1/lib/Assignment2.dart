import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() =>_Assignment2State();

}

class _Assignment2State extends State<Assignment2>{
  bool box1Color=false;
  bool box2color=false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Color Box",),
          backgroundColor: Colors.purple,
        )   ,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Box1
                Column(
                  children: [
                    Container(height: 100,width: 100,color: box1Color? Colors.red:Colors.black,),
                    const SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){setState(() {
                      box1Color=!box1Color;
                    });}, child: const Text("Box1 color")),
                  ],
                ),
                const SizedBox(width: 20,),

                //Box2
                Column(
                  children: [
                    Container(height: 100,width: 100,color: box2color? Colors.yellow:Colors.black,),
                    const SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){setState(() {
                      box2color=!box2color;
                    });}, child: const Text("Box2 color")),
                  ],
                ),
                const SizedBox(width: 20,),
              ],
              )
          ],
        ),
        ),
    );
  }
}