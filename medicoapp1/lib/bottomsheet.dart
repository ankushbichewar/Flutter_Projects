
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medicoapp1/modelclass.dart';
import 'package:intl/intl.dart ';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

   
  List data=[];
  File? animalImage;
  File? medicneImage;

  TextEditingController titlecontrol =TextEditingController();
  TextEditingController descreptioncontrol =TextEditingController();
  TextEditingController datecontrol =TextEditingController();
  TextEditingController datecontro2 =TextEditingController();
  

  pickAnimalImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
          animalImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  pickmedicneImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
          medicneImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
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
}

  void addnewtask(bool toedit,[Toaddmodel? tomodelobj]){

    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      context: context,
       builder:(context) {
        return Padding(
       padding: const EdgeInsets.only(
       left: 20,
        right: 20,
     // bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
           const  SizedBox(height: 20,),
            const Text("Add Animal Details",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey,
                             child:   animalImage != null
                            ? Image.file(
                                 animalImage!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )
                    
                             :IconButton(onPressed: (){
                               pickAnimalImage(ImageSource.gallery);
                             },
                              icon:const Icon(Icons.add_a_photo_outlined,size: 40,)
                              )
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Add Animal Image")
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text("Name",
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
                       hintText: "Enter Animal Name",
                       labelText: "Name",
                  ),
                ),
                 const SizedBox(height: 10,),
                const Text("medicne name ",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                 const SizedBox(height: 4,),
                TextField(
                  controller: descreptioncontrol,
                  maxLines: 2,
                  
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
                       hintText: "Enter medicne name",
                       labelText: "medicne name"  
                  ),
                ),
                 const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Container(
                            height: 100,
                            width: 200,
                            color: Colors.grey,
                             child:   animalImage != null
                            ? Image.file(
                                 animalImage!,
                                width: 200,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                    
                             :IconButton(onPressed: (){
                               pickAnimalImage(ImageSource.gallery);
                             },
                              icon:const Icon(Icons.add_a_photo_outlined,size: 50,)
                              )
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("Add Medicne Image"),
                    
                      ]
                    )
                  ]
                    ),
                 const SizedBox(height: 10,),
                const Text("start date",
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
                    labelText: "select start date",
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
                       hintText: " start Date", 
                      
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
                const SizedBox(height: 10,),
                const Text("end date",
                  style: TextStyle(
                  fontSize: 16,
               ),
                ),
                  const SizedBox(height: 4,),
                TextField(
                  controller: datecontro2,
                  readOnly: true,
                  decoration: InputDecoration(
                     suffixIcon:const Icon(Icons.calendar_month_outlined),
                    labelText: "select end date",
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
                       hintText: " end Date", 
                      
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
                    datecontro2.text = formatedDate;
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
               child:const Text("Add Animal",
               style:TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: Colors.black
               ) ,
               ) 
               ),
            ),
            const SizedBox(height: 10,),
          ],
        ),

        );
        
      },
      
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(onPressed: (){
        addnewtask(false);
      }),
    );
  }
}

 