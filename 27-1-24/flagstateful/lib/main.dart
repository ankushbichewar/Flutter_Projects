import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = -1;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
     floatingActionButton: FloatingActionButton(onPressed: 
     (){
      setState(() {
        _counter++;
      });
     },
     child: const Text("+"),
     ), 
     body: Container(
      color: Color.fromARGB(255, 230, 231, 232),

      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

       (_counter>=0)?
       Container(
        height: 500,
        width: 10,
        color: Colors.black,
       )
       :Container(),
       Column(
        children: [
           (_counter >=1)?
                Container(
                  height: 60,
                  width: 220,
                  color: Colors.orange,
                )
                :Container(),

            (_counter >=2)?
                Container(
                  height: 60,
                  width: 220,
                  color: Colors.white,
                  child:  (_counter >=3)?
                Image.network("https://image.shutterstock.com/image-photo/image-260nw-2345853259.jpg")
                :Container(),
                )
                :Container(),    

                (_counter>=4)?
                Container(
                  height: 60,
                  width: 220,
                  color: Colors.green,
                ) 
                :Container(),
        ],
       )
        ],
      ),
     ),
       );
  }
}
