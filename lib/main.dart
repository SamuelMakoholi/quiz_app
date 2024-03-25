import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';


void main()
{
  runApp( MaterialApp(
    home:Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 80, 4, 210),
              Color.fromARGB(255, 64, 4, 169)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            )),
        child: const StartScreen()),
   ),
   ),
   );
}