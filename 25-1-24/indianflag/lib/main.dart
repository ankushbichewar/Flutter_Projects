import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Happy Republic Day"),backgroundColor: Colors.yellow,),
        body: Center( 
          child:
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              Container(height: 700,width: 10,color: Colors.blueGrey,)
            ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                SizedBox(height: 50,),
            Container(height: 50,width: 200,color: Colors.orange,),
            Container(height: 50,width: 200,color: Colors.white,
            child: Container(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcBGHMTKPGqAykR8X_YiHeuPmzPubXH_Ijk8tqzu-HDw&s"),),),
            Container(height: 50,width: 200,color: Colors.green,),
            ]
            ),

          ],

        )
      
      ),
      )
    );
  }
}
