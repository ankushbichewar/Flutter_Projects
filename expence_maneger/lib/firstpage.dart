import 'package:expence_maneger/secondpage.dart';
import 'package:flutter/material.dart';

class MyfirstExpence extends StatefulWidget {
  const MyfirstExpence({super.key,});
  @override
  State createState() => _MyfirstxpenceState();
}


class _MyfirstxpenceState extends State {
 
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const MysecondExpence())
                );
              },
              child: CircleAvatar(
                backgroundColor: const Color.fromRGBO(234, 238, 235, 1),
                radius: 72,
                child: Image.asset("assets/pocket.png",
                width: 69.76,
                height: 58.82,
                ),
              ),
            ),
            const Text("Expense Manager",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
            )
          ],
        ),
      ),
    );
  }

}