import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 100,
                width: 100,
                color: Colors.amber,
                ),
                 Container(height: 100,
                width: 100,
                color: Colors.red,
                ), Container(height: 100,
                width: 100,
                color: Colors.blue,
                )
              ],
             ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 100,
                width: 100,
                color: Colors.amber,
                ),
                 Container(height: 100,
                width: 100,
                color: Colors.red,
                ), Container(height: 100,
                width: 100,
                color: Colors.blue,
                )
              ],
             )

            ],
        )
        )
    );
  }

  Container newMethod() => Container();
}
