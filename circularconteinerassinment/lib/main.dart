import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context){
  return  MaterialApp(
    home: Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
           
          decoration: BoxDecoration(
            shape:BoxShape.circle,
           border: Border.all(color: Colors.black,width: 5),
           color: Colors.amber,
           boxShadow: const [
             BoxShadow(
              color: Colors.redAccent,
             // offset: Offset(30,30),
              blurRadius:30,
            )
           ]
            ),
            child:
            Image.network("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg",
            ),
            
          ),
        ),
      ),
    
  );
}
  
  }

