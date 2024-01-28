import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: const Text("Padding & Margin"),backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Container(color: Colors.blue,child: Container(height: 250,width: 250,color: Colors.amber,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(30),
        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s")
        ,),),
      ),
      ),
    );
  }
}