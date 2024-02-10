import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int count=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Quiz"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {
          count++;
        });},
        child: const Text("Next"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),  
        Text("Question $count/10"),
          const SizedBox(
            height: 15,
          ),
          
          (count==0)?
          Text("Question 1: what is Flutter?")
          :Container(),
          (count==1)?
          Text("Question 2: when flutter comes")
          :Container(),
          (count==2)?
          Text("Question 3: why is Flutter ")
          :Container(),
          (count==3)?
          Text("Question 4: What is mean by Flutter?")
          :Container(),
          (count==4)?
          Text("Question 5: What is Dart?")
          :Container(),
          (count==5)?
          Text("Question 6: is dart OPP language?")
          :Container(),
          (count==6)?
          Text("Question 7: which is platfom independant language")
          :Container(),
          (count==7)?
          Text("Question 8: last question?")
          :Container(),

          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Text("Option 1"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Text("Option 2"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Text("Option 3"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: const Text("Option 4"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}
