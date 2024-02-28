import 'package:flutter/material.dart';

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
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List cardcolor=[
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  
  int colorcount=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:const  Text("To-do List",
        //style: 
        ),
        backgroundColor:const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: 
      Padding(padding:const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: ListView.builder(
        itemCount:4,
        
        itemBuilder:(context, index) {
           colorcount=index;
          if(colorcount==5){
            colorcount=0;
          }
          return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding:const EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow:const  [
              BoxShadow(
                color:Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 15,
              )
            ],
            
            color:  cardcolor[colorcount],
          ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:CircleAvatar(
                         backgroundColor: Colors.white,
                        child:
                       Image.network("https://cdn.pixabay.com/photo/2016/03/31/19/50/checklist-1295319_1280.png",
                      height: 19.07,
                      width: 23.79,
                      ),
                      )
                    ),
                   const SizedBox(height: 10,),
                 const   Text("10/july/2023" ,
                 style: TextStyle(
                      fontWeight: FontWeight.w500,
                       fontSize: 10,
                 ),
                 )
                  ],
                ),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Column(                    
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text("Lorem Ipsum is simply setting industry",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        ),
                        SizedBox(height: 15,),
                        Text("Simply dummy text of the printing and typesetting industry\nLorem Ipsum has been the industry's standard dummy\ntext ever since the 1500s",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        )
                        ),
                      ],
                    ),
                     Row(
                      children: [ 
                       Icon(Icons.edit_outlined,color: Color.fromRGBO(2, 167, 177, 1) ,),
                       Icon(Icons.delete_outline_outlined,color:  Color.fromRGBO(2, 167, 177, 1),)
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
      
       showModalBottomSheet(context: context, builder: (context){
        return Padding(padding:const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),child:
        SizedBox(
          height: 363,
          width: 360,
          child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            const SizedBox(height: 10,),
           Container(
            alignment: Alignment.center,
            child: 
            const Text("Create Task",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),),),
             const Text("title",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300
            ),),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0,130,148,1),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0,130,148,1),
                  )
                ),
                hintText: "title"
              ),
            ),
            const SizedBox(height: 10,),
             const Text("Description",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300
            ),),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0,130,148,1),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0,130,148,1),
                  )
                ),
                hintText: "Description"
              ),
            ),
            const SizedBox(height: 10,),
             const Text("Date",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300
            ),),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0,130,148,1),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(0,130,148,1),
                  )
                ),
                hintText: "date"
              ),
            ),
          const SizedBox(height: 10,),
          ],
        )
        )
        );
       },
      barrierLabel: "lable"

       );
      
      },
      child:const Icon(Icons.add),
      ),
    
    );
  }
}
