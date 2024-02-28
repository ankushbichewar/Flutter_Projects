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
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   
   String? companyname ="";
   String? mynameis="";
   String? addressofcompany="";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text("My Dream Company"),
      backgroundColor: Colors.purple,
      shadowColor:Colors.amber,
      ),
     body:  Column(
      children: [
        const SizedBox(
          height: 30,
        ),
         TextField(
          decoration: InputDecoration(
            hintText: "Enter your name",
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(5.4),
              borderSide: const BorderSide(
                color: Colors.red,
              )
               ),
               focusedBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(6),
              borderSide: const BorderSide(
                color: Colors.blue,
              )
               ),

          ),
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onSubmitted: (value) {
                mynameis=value;
            },
        ),
        const SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: " Enter comapany name",
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(5.4),
              borderSide: const BorderSide(
                color: Colors.red,
              )
               ),
               focusedBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(6),
              borderSide: const BorderSide(
                color: Colors.blue,
              )
               ),

          ),
          cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onSubmitted: (value) {
                companyname=value;
            },
        ),
         const SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter company adress",
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(5.4),
              borderSide: const BorderSide(
                color: Colors.red,
              )
               ),
               focusedBorder: OutlineInputBorder(
              borderRadius:BorderRadius.circular(6),
              borderSide: const BorderSide(
                color: Colors.blue,
              )
               ),

          ),
          cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onSubmitted: (value) {
                addressofcompany=value;
            },
        ),
         const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
           ElevatedButton(onPressed: (){
              setState(() {
          
               });
           }, child:const Text("submit")),
           ElevatedButton(onPressed: (){
                setState(() {
                  companyname ="";
                  mynameis="";
                  addressofcompany="";
           });
          }, 
          child: const Text("Reset"),
         )
        ]
       ),
       const SizedBox(
        height: 50,
       ),
       SizedBox(
        height: 200,
        width: 200,
        child: Column(
          children: [
            Text("Name : $mynameis"),
            const SizedBox(height: 20,),
            Text("Company : $companyname"),
            const SizedBox(height: 20,),
            Text("Adrees : $addressofcompany"),
          ],
        ),
       )
      ],
     ),

    );
  }
}
