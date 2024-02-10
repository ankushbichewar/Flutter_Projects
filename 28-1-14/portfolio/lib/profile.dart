import 'package:flutter/material.dart';

class profile extends StatefulWidget{
  const profile({super.key});

  @override
  State<profile>   createState()=> _profileState();
}

 class _profileState extends State<profile>{
 
 int _count=-1;
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title:const Text("Portfolio"),),
    floatingActionButton: FloatingActionButton(onPressed: (){
      setState(() {
        _count++;
      });
    },
    child: const Text("Next"),
    ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (_count>=0)?
              Container(
              color: Colors.grey,  
              child:
              Text("Name:Ankush Bichewar",style: TextStyle(fontSize: 30),),
              )
              :Container(),
              (_count>=1)?
              Image.asset("asserts/anku.jpg",height: 300,width: 300,)
              :Container(),
              (_count>=2)?
              Container(
              color: Colors.grey,  
               child:
              Text("Collage:SITS Narhe",style: TextStyle(fontSize: 30),),
              )
              :Container(),
              (_count>=3)?
              Image.asset("asserts/sits.jpg",height: 300,width: 300,)
              :Container(),
              (_count>=4)?
              Container(
              color: Colors.grey,  
              child:
              Text("Dream Company:Google",style: TextStyle(fontSize: 30),),
              )
              :Container(),
              (_count>=5)?
              Image.asset("asserts/gogle.png",height: 300,width: 300,)
              :Container(),
            ],
          )
        ),
  );
 }
 } 
