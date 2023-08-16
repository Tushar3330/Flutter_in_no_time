import 'package:flutter/material.dart';

void main() {
  runApp(Firstapp());
}

class Firstapp extends StatelessWidget {
  const Firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Material(
        child: Center( 
          child: Container(
            child: Text("Welcome to my first app"),
          ),
        ),
      ),
    );
  }
}
