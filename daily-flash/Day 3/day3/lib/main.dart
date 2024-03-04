import 'package:day3/assinment1.dart';
import 'package:day3/assinment2.dart';
import 'package:day3/assinment3.dart';
import 'package:day3/assinment4.dart';
import 'package:day3/assinment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assinment5(),
    );
  }
}
