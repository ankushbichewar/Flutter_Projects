import 'package:flutter/material.dart';
import 'assinment1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assinment1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
