import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State<Assignment3> createState()=>_Assignment3State();
}
class _Assignment3State extends State<Assignment3>{

  int? selectedIndex=0;
  //List of Images

  final List<String> imageList=[
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
    "https://img.freepik.com/free-photo/digital-painting-mountain-with-colorful-tree-foreground_1340-25699.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699142400&semt=ais",
    "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="
  ];
  
  static get https => null;

  void ShowNextImage(){
    setState(() { 
      selectedIndex=selectedIndex!+1;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Disply Impages"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageList[selectedIndex!],
            width: 500,height: 500,),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: ShowNextImage, child: const Text("Next"),),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){setState(() {
              selectedIndex=0;
            });}, child: const Text("Reset")),
          ],
        ) 
        ),
      );
  }
}