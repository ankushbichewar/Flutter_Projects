import 'package:flutter/material.dart';
import 'package:listviewproject/dynamicCounter.dart';
import 'package:listviewproject/dynamicInstapage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     // home: DynamicCounter(),
     home: DynamicInstaPage(),
    );
  }
}
