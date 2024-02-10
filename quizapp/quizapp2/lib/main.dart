import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}
class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State createState()=> _QuizState();
}
class _QuizState extends State{


  List<Map> allquations=[
    {"question":"Captitaln of India",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":0,
  },
   {"question":"Captitaln of Rajstan",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":2,
  },
   {"question":"Captitaln of Maharashta",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":1,
  },
   {"question":"Orange city of India",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":3,
  }, {"question":"Biggest city of India",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":1,
  },
  ];
bool quationScreen=true;
int qutionindex=0;
int count=0;
int chooseansindex=-1;
  Color quetioncolor(int buttonno){
    if(buttonno==allquations[qutionindex]["AnswerIndex"]&&chooseansindex!=-1){
    return Colors.green;
    count++;
  }
  else if(chooseansindex==buttonno){
    return Colors.red;
  }else{
    return Colors.white;
  }}
  Scaffold isQuationScreen(){
    if(quationScreen==true){
      return Scaffold(
        appBar: AppBar(
          title: const Text("QuizApp",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w800,
            ),        
          ),
          backgroundColor: Colors.blue,
        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 40,),
                const Text("Quations",
                 style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600),),
                 Text("${qutionindex+1}/${allquations.length}",
                 style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600 )
                 ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text(
              allquations[qutionindex]["question"],
              style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600)
              ),
            ),
             const SizedBox(
                height: 50,
              ),
            Container(
              height: 30,
              width: 300,
              child: ElevatedButton(onPressed: (){
                setState(() {
                chooseansindex=0;
                });
              },
               style: ElevatedButton.styleFrom(backgroundColor:quetioncolor(0)),
               child:Text("A.${allquations[qutionindex]["Options"][0]}")),
              ),
               const SizedBox(
                height: 20,
              ),
               Container(
              height: 30,
              width: 300,
              child: ElevatedButton(onPressed: (){
                setState(() {
                   chooseansindex=1;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor:quetioncolor(1)),
               child:Text("B.${allquations[qutionindex]["Options"][1]}")),
              ),
             const  SizedBox(
                height: 20,
              ),
                Container(
              height: 30,
              width: 300,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  chooseansindex=2;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor:quetioncolor(2)),
               child:Text("C.${allquations[qutionindex]["Options"][2]}")),
              ),
               const SizedBox(
                height: 20,
              ),
               Container(
              height: 30,
              width: 300,
              child: ElevatedButton(onPressed: (){
                setState(() {
                   chooseansindex=3;
                });
              },style: ElevatedButton.styleFrom(backgroundColor:quetioncolor(3)),
               child:Text("D.${allquations[qutionindex]["Options"][3]}")),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              
              qutionindex++;
              chooseansindex=-1;
              if(qutionindex==allquations.length-1){
                quationScreen=false;
              }
              
            });
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.arrow_forward),
          ),
      );
    }
    else{
      return  const Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text("Congratulations ",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w500),)

        ),
      );
    }
  }
 @override
  Widget build(BuildContext context){
    return isQuationScreen();
  }
}