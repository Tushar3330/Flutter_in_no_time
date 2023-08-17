// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    final str = "Day";
    final days = 1;
    // bool byle = true;
    // double dub = 4.08;------------------------------------
    // we can use var variable aas a data type to define any data type
  
    final sys = "by codepur";
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Welcome to Satta Bazzar"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to my first app $str : $days  $sys"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
