import 'package:flutter/material.dart';

class Assinment1 extends StatelessWidget{
  const Assinment1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text("DailyFlash"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column( 
          children: [
            Image.asset("assets/burger.webp"),
            const Padding(padding: EdgeInsets.all(20),
            child: Column( 
             mainAxisAlignment: MainAxisAlignment.start,
              children: [ 
                   Text("Burger",
                   style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600
                   ),
                   ),
                   SizedBox(height: 30,),
                   SizedBox(
                     child: Text("A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world.",
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                     ),
                     ),
                   )
              ],
            ),
            )
          ],
        )
      );
  }
}