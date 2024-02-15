

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
     home: QuizApp(),
    );
  }
}
class QuestionAns {
  final String? question;
  final List<String>? options;
  final int? answer;
  final String? discription;

   const QuestionAns({this.question,this.options,this.answer,this.discription});
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key,});

  @override
  State createState() => _QuizAppState();
}
class _QuizAppState extends State{
  List Allquestion=[
    const QuestionAns(
      question: "Which programming language is used to build Flutter applications?",
      options: ["Kotlin","Dart","Java","Go"],
      answer: 1,
      discription: " B. Flutter programs are written in Google's own Dart programming language.",
    ),
     const QuestionAns(
      question: "How many types of widgets are there in Flutter?",
      options: ["2","4","6","8+"],
      answer: 0,
      discription: "A. There are two types of widgets available to developers in Flutter. These are stateful and stateless widgets.",
    ),
     const QuestionAns(
      question: "What is the key configuration file used when building a Flutter project?",
      options: ["pubspec.yaml","pubspec.xml","config.html","root.xml"],
      answer: 1,
      discription: "A. pubspec.yaml lives at the base of a Flutter project and provides the necessary configuration and setup to build Flutter apps.",
    ),
    const QuestionAns(
      question: "What language is Flutter's rendering engine primarily written in?",
      options: ["Kotlin"," C++"," Dart","Java"],
      answer: 1,
      discription: "Flutter's rendering engine is primarily written in C++ to provide low-level rendering using the Skia graphics library.",
    ),
    const QuestionAns(
      question: "Which component allows us to specify the distance between widgets on the screen?",
      options: ["SafeArea","SizedBox"," table","AppBar"],
      answer: 3  ,
      discription: "B. SizedBox is a widget that allows us to have a specified height or width between two related widgets.",
    ),
  ];
  int qutionIndex=0;
  bool presentScreen=true;
  int selectedButton=-1;
  int correctans=0;
  void nextqution(){
    if(selectedButton==-1){
      return;
    }
    if(selectedButton==Allquestion[qutionIndex].answer){
      correctans++;
    }
    if(qutionIndex==Allquestion.length-1){
        presentScreen=false;
    }
    setState(() {
      qutionIndex+=1;
      selectedButton=-1;
    });
  }
  Color changecolor(int buttonNo){
    if(selectedButton!=-1){
        if(buttonNo==Allquestion[qutionIndex].answer){
          return Colors.green;
        }else if(selectedButton==buttonNo){
          return Colors.red;
        }else{
          return Colors.white;
        }
    }else{
      return Colors.white;
    }

  }
  Widget screenPresent(){
    if(presentScreen==true){
      return Scaffold(
        backgroundColor:const Color.fromARGB(255, 158, 225, 234),
        appBar: AppBar(
          title:const Text("QuizApp",
          style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,  
          ),),
          backgroundColor: const Color.fromARGB(255, 14, 178, 196),
          centerTitle: true,
          
        ),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
            Text("Questions ${qutionIndex+1}/${Allquestion.length}",
            style: const  TextStyle(fontSize: 30,
            fontWeight:FontWeight.w600
            ),
            )
          ]
            ),
          const SizedBox(height: 40,),
          SizedBox(
          height: 100,
          width: 400,
          child:
          Text(Allquestion[qutionIndex].question,
          style:const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),),
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 45,
            width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:changecolor(0)),
            onPressed: (){
              if(selectedButton==-1){
              setState(() {
                selectedButton=0;
              });
              }
            },
             child:Text("A. ${Allquestion[qutionIndex].options[0]}",
             style:const  TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
             ),
             ),
             )
             ,),
             const  SizedBox(height: 20,),
              SizedBox(
            height: 45,
            width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:changecolor(1)),
            onPressed: (){
              if(selectedButton==-1){
              setState(() {
                selectedButton=1;
              });
              }
            },
             child:Text("B. ${Allquestion[qutionIndex].options[1]}",
             style:const  TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
             ),
             ),
             )
             ,),
             const  SizedBox(height: 20,),
              SizedBox(
            height: 45,
            width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:changecolor(2)),
            onPressed: (){
              if(selectedButton==-1){
              setState(() {
                selectedButton=2;
              });
              }
            },
             child:Text("C. ${Allquestion[qutionIndex].options[2]}",
             style:const  TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
             ),
             ),
             ),
             ),
             const  SizedBox(height: 20,),
              SizedBox(
            height: 45,
            width: 300,
          child: ElevatedButton(
           style: ElevatedButton.styleFrom(backgroundColor:changecolor(3)),
            onPressed: (){
              if(selectedButton==-1){
              setState(() {
                selectedButton=3;
              });
              }
            },
             child:Text("D. ${Allquestion[qutionIndex].options[3]}",
             style:const  TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
             ),
             ),
             )
             ,),
             const SizedBox(height: 25,),
             (selectedButton!=-1)?
             SizedBox(
            height: 120,  
            width: 350,
            child:   
            Text("Discripation : ${Allquestion[qutionIndex].discription}}",
            style: const  TextStyle(fontSize: 20,
          
            ),
            )
             ):
            const SizedBox(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 14, 178, 196),
          onPressed: (){
             nextqution();
          },
          child: const Icon(Icons.arrow_forward),
          ),
         );

         //second Scaffold
          }else{
         return  Scaffold(
          backgroundColor: const Color.fromARGB(255, 158, 225, 234),
         appBar: AppBar(
          title:const Text("Score Page",
          style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
          ),
        ),
        backgroundColor:const Color.fromARGB(255, 14, 178, 196),
        ),
        
        body:  Column(children: [
         const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/trophy.webp")
            ],
          ),
       const SizedBox(height: 20,),
        const  Text("Congratulation...",
           style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
          ),
          ),
          const SizedBox(height: 10,),
          const Text("You Completed The Quiz",
            style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500
          ),
           ),
           const SizedBox(height: 10,),
           Text("Score: $correctans/${Allquestion.length}",
            style:const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 2.5,
              
          ),
           ),
          const SizedBox(height: 30,),
          ElevatedButton(
             style: ElevatedButton.styleFrom(foregroundColor:const Color.fromARGB(255, 14, 178, 196),),
            onPressed: (){
                qutionIndex=0;
               presentScreen=true;
                selectedButton=-1;
                correctans=0;
                setState(() {
                });
          }, child:const Text("Reset",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            ),
          ))
        ]),
      );
    }
  } 
  @override
  Widget build(BuildContext context){
    return screenPresent();
  }
}

