//import 'package:advancetodo1/databaseconnection.dart';
import 'package:advancetodo1/databaseconnection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class Toaddmodel{
   int ? id;
   String? title;
   String descrption;
   String date;

   Toaddmodel({
    this.id,
    required this.title,
    required this.descrption,
    required this.date});

    Map<String,dynamic> todoMap(){
  return {
   
    'title':title,
    'descreption':descrption,
    'date':date,
  };
}
}


class MyApp extends StatelessWidget {
  

  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AdvanceToDo(),
    );
  }
}

class AdvanceToDo extends StatefulWidget{


  const AdvanceToDo({super.key});


  @override
  State createState() => _AdvanceToDo();
}

class _AdvanceToDo extends State{


  TextEditingController titlecontrol =TextEditingController();
  TextEditingController descreptioncontrol =TextEditingController();
  TextEditingController datecontrol =TextEditingController();

 List cards = [];

 void getList() async{
  cards = await UserInfo.obj.gettask();
  setState(() {
    
  });
 }

  void addnewtask(bool toedit,[Toaddmodel? tomodelobj]){
    showModalBottomSheet(
      
      isScrollControlled: true,
      isDismissible: true,
      context:context,
       builder:(newcontext) {
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



//remove method
void removeTasks(Toaddmodel toModelObj) {
    setState(()  {
     data.remove(toModelObj);
    //deletetask(toModelObj);
   });
}

//clear controller
void clearcontroller(){
  titlecontrol.clear();
  descreptioncontrol.clear();
  datecontrol.clear();
}

void submmit(bool toedit,[Toaddmodel? tomodelobj])async{
  if(titlecontrol.text.trim().isNotEmpty &&
       descreptioncontrol.text.trim().isNotEmpty&&
       datecontrol.text.trim().isNotEmpty){
        if(!toedit){
   
        Toaddmodel obj =   Toaddmodel(
        title: titlecontrol.text.trim(),
        descrption: descreptioncontrol.text.trim(),
        date: datecontrol.text.trim(),
       );
    // cards.add(obj);
     await UserInfo.obj.inserrtTaskData(obj);
      cards=await UserInfo.obj.gettask();
     setState(() {
       
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


   
    int flag = 0;
   @override
  Widget build(BuildContext context) {
    if(flag == 0){
    getList();
    flag = 1;
    }
    return  Scaffold(
          backgroundColor:const Color.fromRGBO(111, 81, 255, 1),
          body: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:const EdgeInsets.only(
                  top: 42,
                  left:26,
                  bottom: 40 
                ),
                child:const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text("Good morning",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                    ),
                     Text("Pathum",
                    style: TextStyle(
                      fontSize: 30,
                        color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                     ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration:const BoxDecoration( 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Color.fromRGBO(217, 217, 217, 1),
                   ),
                   child: Column( 
                    children: [
                      const Text("CREATE TO DO LIST",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height:5,   
                          ),
                      ),
                      Expanded(
                        child: Container(
                          padding:const EdgeInsets.only(
                            top: 30,
                          ),
                            width: double.infinity,
                           decoration:const BoxDecoration( 
                             borderRadius: BorderRadius.only(
                             topRight: Radius.circular(40),
                             topLeft: Radius.circular(40),
                               ),
                               color: Color.fromRGBO(255, 255, 255, 1)
                          ),
                          child: ListView.builder(
                            itemCount: cards.length,
                            itemBuilder: (context, index){
                              return  Slidable(
                                closeOnScroll: true,
                                endActionPane: ActionPane(motion: const DrawerMotion(),
                                 children:[
                                  Expanded(child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [ 
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration( 
                                            color: const Color.fromRGBO(89, 57,241,1,),
                                            borderRadius: BorderRadius.circular(20),
                                          
                                          ),
                                          child: IconButton(onPressed: (){
                                            setState(() {
                                              
                                            });
                                          },
                                           icon:const Icon(Icons.edit,
                                            color: Colors.white,
                                            size: 20,
                                           )
                                           )
                                        ),
                                      ),
                                       GestureDetector(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration( 
                                            color: const Color.fromRGBO(89, 57,241,1,),
                                            borderRadius: BorderRadius.circular(20),
                                          
                                          ),
                                          child: IconButton(onPressed: (){
                                            setState(() {
                                              removeTasks(cards[index]);
                                            });
                                          },
                                          alignment: Alignment.center,
                                           icon:const Icon(Icons.delete,
                                            color: Colors.white,
                                            size: 20,
                                           )
                                           )
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      )
                                    ],
                                  )
                                  )
                                 ] 
                                 ),
                                 key: ValueKey(index),
                                child: Container(
                                   margin:const EdgeInsets.only(bottom: 30),
                                      padding:const EdgeInsets.all(15),
                                  decoration:const BoxDecoration(
                                   boxShadow:[
                                BoxShadow(
                                color:Color.fromRGBO(38, 66, 42, 1),
                                  blurRadius: 10,
                                )
                                 ],
            
            color: Colors.white,
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
                      child:const CircleAvatar(
                         backgroundColor: Color.fromARGB(255, 128, 124, 124),
                      )
                    ),
                  const  SizedBox(height: 10,),
                    Text(cards[index]['date'],
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
                        Text(cards[index]['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        ),
                     const  SizedBox(height: 15,),
                        Text(cards[index]['descreption'],
                        style:const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        )
                        ),
                      ],
                    ),

                    
              
                       ],
                      )
                 ),
                 ],
                ),
                )
        
                                
                      );
                            }
                            ),
                        ),
                      )
                    ],
                   ),
                ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
            onPressed: (){
              clearcontroller();
              addnewtask(false);
            },
            child:const Icon(Icons.add,
            ),
        ),
    );
  }

}

