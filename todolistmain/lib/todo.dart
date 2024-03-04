

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});

  @override
  State createState()=>ToDoAppState();
}
class ToDoAppState extends State{
 
  TextEditingController titlecontrol =TextEditingController();
  TextEditingController descreptioncontrol =TextEditingController();
  TextEditingController datecontrol =TextEditingController();

  void addnewtask(bool toedit,[Toaddmodel? tomodelobj]){
    showModalBottomSheet(
      
      isScrollControlled: true,
      isDismissible: true,
      context: context,
       builder:(context) {
        return Padding(
       padding: EdgeInsets.only(
       left: 20,
        right: 20,
      bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
            const Text("Create Task",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                const SizedBox(height: 10,),
                const Text("title",
                  style: TextStyle(
                  fontSize: 16,
            ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  controller: titlecontrol,
                  decoration: InputDecoration(
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235),
                        )
                       ),
                       hintText: "Enter new Title",
                       labelText: "title",
                  ),
                ),
                 const SizedBox(height: 10,),
                const Text("description ",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  controller: descreptioncontrol,
                  maxLines: 3,
                  
                  decoration: InputDecoration(
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235),
                        )
                       ),
                       hintText: "Enter new Description",
                       labelText: "description"  
                  ),
                ),
                 const SizedBox(height: 10,),
                const Text("date",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  controller: datecontrol,
                  readOnly: true,
                  decoration: InputDecoration(
                     suffixIcon:const Icon(Icons.calendar_month_outlined),
                    labelText: "select date",
                       border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                       ),
                       focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(
                          width: 2,
                          color: Color.fromARGB(164, 38, 24, 235), 
                        )
                      
                       ) ,
                       hintText: "Date", 
                      
                  ),
                  onTap: () async {
               DateTime? pickeddate = await showDatePicker(
               context: context,
               initialDate: DateTime.now(),
               firstDate: DateTime(2024),
               lastDate: DateTime(2027),
               );
               String formatedDate =
                 DateFormat.yMMMd().format(pickeddate!);
                    setState(() {
                    datecontrol.text = formatedDate;
                       });
                   },
                ),
                const SizedBox(height: 20,)
              ],
            ),
            Container(
              height: 40,
              width: 200,
              color: Colors.white,
              child: ElevatedButton(  
              onPressed: (){
              toedit ? submmit(toedit,tomodelobj):submmit(toedit);
                Navigator.of(context).pop();
              },
              style:const ButtonStyle(
                backgroundColor:MaterialStatePropertyAll(Color.fromARGB(164, 38, 24, 235),)
              ),
               child:const Text("Summit",
               style:TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.black
               ) ,
               ) 
               ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
        );
      },);
  }
 
 


//remove method
void removeTasks(Toaddmodel toModelObj) {
    setState(() {
     data.remove(toModelObj);
   });
}

//clear controller
void clearcontroller(){
  titlecontrol.clear();
  descreptioncontrol.clear();
  datecontrol.clear();
}

 List cardcolor=[
   
   const Color.fromARGB(255, 230, 206, 113),
   const Color.fromARGB(255, 118, 219, 133),
   const Color.fromARGB(255, 73, 193, 209),
   const Color.fromARGB(255, 210, 71, 210),
  ];

  List data=[
     Toaddmodel(
      title:"Design a new figma file",
     descrption: "Design new figma file for clients project,Project which will be build using Flutter ",
     date:"mar1.2024"),
     Toaddmodel(
      title:"Arrange and meething with client",
     descrption: "Arrange an Meeting , with Client to show him and figma file",
     date:"mar2.2024"),
  ];

  List cheklist=[];

  Color chekcolor(iscolor){
    if(iscolor==true){
      return Colors.green;
    }else{
      return Colors.white;
    }
    
  }

  void submmit(bool toedit,[Toaddmodel? tomodelobj]){
  if(titlecontrol.text.trim().isNotEmpty &&
       descreptioncontrol.text.trim().isNotEmpty&&
       datecontrol.text.trim().isNotEmpty){
        if(!toedit){
   setState(() {
     data.add(
     Toaddmodel(
        title: titlecontrol.text.trim(),
        descrption: descreptioncontrol.text.trim(),
        date: datecontrol.text.trim(),
       ),
     );
   });
       }
       else{
        setState(() {
          tomodelobj!.date=datecontrol.text.trim();
        tomodelobj.title=titlecontrol.text.trim();
        tomodelobj.descrption=descreptioncontrol.text.trim();
        });
       }
       }
   clearcontroller();
}
  
 void edittask(Toaddmodel tomodelobj){
  titlecontrol.text=tomodelobj.title!;
  descreptioncontrol.text=tomodelobj.descrption;
  datecontrol.text=tomodelobj.date;

  addnewtask(true,tomodelobj);
 }

@override
  void dispose() {
    super.dispose();
    titlecontrol.dispose();
    datecontrol.dispose();
    descreptioncontrol.dispose();
  }

  //build method
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )
        ),
        surfaceTintColor: Colors.black,
       title:const  Text("To-do List", 
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700
        ),
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(164, 38, 24, 235),
        
      ),
      body:Stack(
        children:[
      Image.asset("assets/todo3.jpg",
      height:double.maxFinite ,
      ),
      Padding(padding:const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 10,
      ),
      child: ListView.builder(
        itemCount:data.length,
        
        itemBuilder:(context, index) {
          cheklist.add(false);
          return Container(
            margin:const EdgeInsets.only(bottom: 30),
          padding:const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.only(
              bottomLeft: Radius.circular(50),
               topRight: Radius.circular(50),
            ),
            boxShadow:const[
              BoxShadow(
                color:Color.fromRGBO(38, 66, 42, 1),
                blurRadius: 10,
              )
            ],
            
            color:  cardcolor[index% cardcolor.length],
          ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 58,
                      width: 58,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:CircleAvatar(
                         backgroundColor: Colors.white,
                        child:
                       Image.asset("assets/task1.jpg",
                      height: 40,
                      width: 40,
                      ),
                      )
                    ),
                  const  SizedBox(height: 10,),
                    Text(data[index].date,
                 style:const TextStyle(
                      fontWeight: FontWeight.w500,
                       fontSize: 12,
                 ),
                 )
                  ],
                ),
                const SizedBox(width: 10,),


              //  title and desscreption coloum
                Expanded(child:
                 Column(
                  children: [
                     Column(                    
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text(data[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        ),
                     const  SizedBox(height: 15,),
                        Text(data[index].descrption,
                        style:const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        )
                        ),
                      ],
                    ),

                    
                //row for delete and edit
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [ 
                       IconButton(
                        onPressed: (){
                          edittask(data[index]);
                        },
                         icon: const Icon(
                          Icons.edit_outlined,
                          color: Color.fromARGB(164, 38, 24, 235), 
                          )
                          ),
                           IconButton(
                        onPressed: (){
                          removeTasks(data[index]);
                        },
                         icon: const Icon(
                          Icons.delete_outline,
                          color:  Color.fromARGB(164, 38, 24, 235),
                          )
                          ),
                         Checkbox(
                      value: cheklist[index],
                       onChanged: (bool? newValue) {
                         setState(() {
                           cheklist[index] = newValue!;
                            });
                          },
                         activeColor:chekcolor(cheklist[index]), 
                        
                        ),
                         
                    ],   
                    )
                  ],
                )
                ),
              ],
            ),
          );
        },
      ))
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        clearcontroller();
        addnewtask(false);
      },
      backgroundColor:const Color.fromARGB(164, 38, 24, 235),
      child:const Icon(Icons.add),
      ),
    );
  }
}

class Toaddmodel{
   String? title;
   String descrption;
   String date;

   Toaddmodel({
    required this.title,
    required this.descrption,
    required this.date});
}