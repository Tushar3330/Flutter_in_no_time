// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/Pages/login.dart';
import 'package:myapp/Widgets/theme.dart';
import 'package:myapp/utils/routes.dart';
import 'Pages/Home.dart';

void main() {
  runApp(Firstapp());
}

class Firstapp extends StatelessWidget {
  const Firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //dont use this ase we are using at routes
      // home:Home(),

      //changing colour of the ui
      //theme mode . light for light mode
      // we have to first define what is dark theme to use this metod as below
      themeMode: ThemeMode.light,
      //primary swatch is used to define the colour we want from the banner apart from theme
       theme:MyTheme.lightTheme(context),
        darkTheme: MyTheme.darktheme(context),
       //ThemeData(
      //   primarySwatch: Colors.red,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      //    appBarTheme: AppBarTheme(
      //     color: Colors.white,
      //     elevation: 0.0,
         
      //     iconTheme: IconThemeData(
      //       color: Colors.black),
          
      //    ),
      //    textTheme: Theme.of(context).textTheme,

      // ),
     
      //ThemeData(
      //   brightness: Brightness.dark,
      //   //as it is dark theme so it will not work and overridden so better to use in light as dark is more./..
      //   primarySwatch: Colors.lime,
      // ),
       debugShowCheckedModeBanner: false,
      //to open whichever route we want as initially
      initialRoute:   Myroutes.Homeroute,

//all the things are given by routes so we have to select a primary route
      routes: {
        //by default
      
        "/": (context) => Home(),

        //we have to define which we have to go
        Myroutes.Homeroute: (context) => Home(),
       Myroutes.loginroute: (context) => Login(),
      },
    );
  }
}
