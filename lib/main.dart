import 'package:flutter/material.dart';
import 'Home.dart';


void main() {
  runApp(Firstapp());
}

class Firstapp extends StatelessWidget {
  const Firstapp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home:Home(),
    );
  }
}
