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
    {"question":"  Captital of India?",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":0,
  },
   {"question":"Capital of Rajstan?",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":2,
  },
   {"question":"Maharastra's Capital?",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":1,
  },
   {"question":"Orange city of India?",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":3,
  }, {"question":"Biggest city of India?",
    "Options":["Delli","Mumbai","Jaypur","Nagpur"],
    "AnswerIndex":1,
  },
  ];
bool quationScreen=true;
int qutionindex=0;
int chooseansindex=-1;
int correctans=0;

void nextPageInfo(){
  if(chooseansindex==-1){
    return;
  }
  if(qutionindex==allquations.length-1){
    quationScreen=false;
  }
  if(chooseansindex==allquations[qutionindex]["AnswerIndex"]){
    correctans++;
  }
  if(chooseansindex!=-1){
    setState(() {
      qutionindex++;
    chooseansindex=-1;
    });
  }
}
  Color quetioncolor(int buttonno){
    if(chooseansindex!=-1){
    if(buttonno==allquations[qutionindex]["AnswerIndex"]){
    return Colors.green;
  }
  else if(chooseansindex==buttonno){
    return Colors.red;
  }else{
    return Colors.white;
  }
  }else{
    return Colors.white;
  }
  }
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
          backgroundColor: const Color.fromARGB(255, 172, 180, 28),
        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(height: 90,),
                const Text("Quations",
                 style:TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600),),
             Text("${qutionindex+1}/${allquations.length}",
                 style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600 )
                 ),
            const SizedBox(height: 60,),
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
            SizedBox(
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
               SizedBox(
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
                SizedBox(
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
               SizedBox(
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
           nextPageInfo();
          },
          backgroundColor:const Color.fromARGB(255, 172, 180, 28),
          child: const Icon(Icons.arrow_forward),
          ),
      );
    }
    else{
      return   Scaffold(
        appBar: AppBar(title: const Text("Score Page",
        style:  TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500),),
          backgroundColor: const Color.fromARGB(255, 172, 180, 28),),
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Column(
          children: [
          const SizedBox(height: 100,),
          Image.asset("assets/trophy.webp",
          height: 200,
          width: 200,
          ),
          const  Text("Congratulations ",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.orange,
            ),),
            const SizedBox(height: 20,),
            Text("$correctans/${allquations.length}",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500),),
           ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 172, 180, 28)),
            onPressed: (){
                 quationScreen=true;
                 qutionindex=0;
                 chooseansindex=-1;
                 correctans=0;
                 setState(() {          
                 });
           },
           child: const Text("Reset",
                 style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black
                  ),),)
          ],
          ),
          ],
        ),
      );
    }
  }
 @override
  Widget build(BuildContext context){
    return isQuationScreen();
  }
}