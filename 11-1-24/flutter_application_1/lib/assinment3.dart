import 'package:flutter/material.dart';

class Assinment3 extends StatelessWidget{
  const Assinment3({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Assinment3"),
      ),
      body: SizedBox(
        height:double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {},
                 child: const Text("Butten 1 "),
                 )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {},
                 child: const Text("Butten 2 "),
                 )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {},
                 child: const Text("Butten 3 "),
                 )
              ],
            )
          ],

        ),
        ),
      );
  }
}