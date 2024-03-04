import 'package:day2/assinment1.dart';
import 'package:day2/assinment2.dart';
import 'package:day2/assinment3.dart';
import 'package:day2/assinment4.dart';
import 'package:day2/assinment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    //  home: Assinment1()
    // home: Assinment2(),
   //home: Assinment3(),
    // home: Assinment4(),
    home: Assinment5(),
    );
  }
}
