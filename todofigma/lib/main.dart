import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int number=0;
 List<Color> mycolor=[const Color.fromARGB(255, 210, 219, 124),
 const Color.fromARGB(255, 154, 236, 222),
 const Color.fromARGB(255, 239, 216, 163),
 const Color.fromARGB(255, 211, 149, 185),
 const Color.fromARGB(255, 148, 205, 218),
 ];
 int colorindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title:  Text("To-do List",
      style:GoogleFonts.quicksand(),
      ),
      backgroundColor: const Color.fromARGB(255, 21, 180, 156),
     ),
     body: ListView.builder(
      itemCount:mycolor.length,
      itemBuilder: (context, index) {
        return  Card(
        margin:const  EdgeInsets.only(top: 30,
         left: 15,
         right: 15,
         ),
          color: mycolor[index],
          child: Row(
            children: [
              Column(
                children: [
                Container(
                 height: 52,
                  width: 52,
                  child:CircleAvatar(
                    backgroundColor: Colors.white,
                    child:
                  Image.asset("assets/imageicon.jpg",
                  height: 30.5,
                  width: 30.6,
                  ),
                  )
                  ) ,
                  SizedBox(height: 8,),
                  const Text("10/3/24"
                  ,style:TextStyle(fontSize:10 ) ,),
                ],
              ),
              const SizedBox(width: 20,),
              
               Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [ 
                 Container(
                  child:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[        
                    Text("Lorem Ipsum is simply setting industry. "),
                  SizedBox(
                    height: 10,
                    ),
            
                     Text("Simply dummy text of the printing and typesetting industry\n Lorem Ipsum has been the industry's standard dummy\n text ever since the 1500s",
                  style: TextStyle(fontSize: 10),),
                    ]
                  )
                 ),
                  const SizedBox(height: 10,),
                  const Row(
                    children: [
                      Icon(Icons.edit,size:20,),
                      Icon(Icons.delete,size: 20,)
                    ],
                  )
                ],
              )
            ],
          ),
         
        );
      }
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          // number=number+1;
          // colorindex=colorindex+1;
          //  if(colorindex==5){
          //    colorindex=0;
        //   }
        });
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}
