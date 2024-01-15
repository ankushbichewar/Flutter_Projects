import 'package:ass1/Assignment2.dart';
import 'package:flutter/material.dart';
import 'package:ass1/Assignment1.dart';
import 'package:ass1/Assignment3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build (BuildContext context){
  return MaterialApp(
   // home: Assignment1(),
  // home: Assignment2(),
  home: Assignment3(),
  );
 } 
}