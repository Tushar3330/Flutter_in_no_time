import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 223, 40, 40),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        
      ),
    
      textTheme: Theme.of(context).textTheme,
    );

    static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        //as it is dark theme so it will not work and overridden so better to use in light as dark is more./..
        primarySwatch: Colors.lime,
    
    );
}
