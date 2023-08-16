import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Here",
        style: TextStyle(
          fontSize:30 ,
          color:Colors.green,
          fontWeight: FontWeight.bold),
          )
          ),
    );
  }
}
 