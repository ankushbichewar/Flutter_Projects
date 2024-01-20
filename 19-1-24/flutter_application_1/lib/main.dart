import 'package:flutter/material.dart';
import 'package:flutter_application_1/assinment2.dart';
import 'package:flutter_application_1/assinment3.dart';
import 'package:flutter_application_1/assinment4.dart';
import 'package:flutter_application_1/assinment5.dart';
import 'package:flutter_application_1/assinment6.dart';
import 'package:flutter_application_1/assinment7.dart';
//import 'assinment1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       // home: Assinment1(),
       // home: Assinment2(),
      // home: Assinment3(),
      // home: Assinment4(),
      //home: Assinment5(),
       //home: Assinment6(),
       home: Assinment7(),
      debugShowCheckedModeBanner: false,
    );
  }
}
