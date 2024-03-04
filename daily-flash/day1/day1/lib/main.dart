import 'package:day1/appbar1.dart';
import 'package:day1/appbar2.dart';
import 'package:day1/appbar3.dart';
import 'package:day1/assinment4.dart';
import 'package:day1/assinment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
    // home: Appbarone(),
   // home: Appbartwo(),
     // home: Appbarthree(),
    // home:Assinment4(),
    home: Assinment5(),

    );
  }
}
