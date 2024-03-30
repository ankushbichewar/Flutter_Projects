import 'package:flutter/material.dart';

class Assinment2 extends StatelessWidget{
  const Assinment2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text("DailyFlash"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
       body: Center(
          child: Column(
            children: [ 
              Container( 
                decoration:const  BoxDecoration( 
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
                ),
                child: Image.asset("assets/burger.webp"),
              ),
               const  SizedBox(height: 30,),
              ElevatedButton(
                
              style:const ButtonStyle( 
                backgroundColor:MaterialStatePropertyAll(
                  Colors.purple,
                  ),
                minimumSize: MaterialStatePropertyAll(Size(250, 70))
              ),  
              onPressed: (){},
               child:const Text("Add to Cart",
               style: TextStyle(
                color: Colors.black
               ),
               )
               )
            ],
          ),
       ),
      );
  }
}