// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:myapp/Pages/Home.dart';
import 'package:myapp/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //creating a name after the welcome if we make a stateful widget then accoerdance with input the display details will also change
  String name = "";
  bool changebutton = false;
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
                height: 200,
              ),
              SizedBox(height: 30),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueAccent,
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
                        //on changing the input changfe the name whwree it is provided
                        onChanged: (value) {
                          name = value;
                          // build(context);
                          // in place of this we can use set method to call build method Again( ),
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(height: 40),

                    InkWell(
                      onTap : () async
                      {
                       
                        setState(() {
                        changebutton = true;
                          
                        });

                      await Future.delayed(Duration(seconds: 1));
                       Navigator.pushNamed(context, Myroutes.Homeroute);

                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds:1),
                        
                        height: 50,
                        width: changebutton?50:150,
                        alignment: Alignment.center,
                        child:changebutton?Icon(
                           Icons.done,
                           color: Colors.white,
                        )
                       
                         :(Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(changebutton?50:8),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     //navigating from one page to another using navigation . push named
                    //     Navigator.pushNamed(context, Myroutes.Homeroute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 30),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
