// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:myapp/Pages/Home.dart';
import 'package:myapp/utils/routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        //scroll view to scroll over the page downward
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginim.png",
                fit: BoxFit.cover,
                height: 500,
              ),
              SizedBox(height: 30),
              Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 50,
                  backgroundColor: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        //navigating from one page to another using navigation . push named
                        Navigator.pushNamed(context, Myroutes.Homeroute);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(150, 30),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
