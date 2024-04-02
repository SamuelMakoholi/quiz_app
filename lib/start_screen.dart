

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{

  const StartScreen(this.StartQuiz, {super.key});

  final void Function() StartQuiz;
  @override
  Widget build(context){
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
       children: [
         Image.asset('assets/images/quiz-logo.png', 
         width: 300,
         color: const Color.fromARGB(240, 234, 230, 230),),

        const SizedBox(height: 80,),

          const Text('Learn Flutter the easy way!', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          ),

        const  SizedBox(height: 40,),

        OutlinedButton.icon(onPressed: StartQuiz, 
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        icon: const Icon(Icons.arrow_right_alt),
        label: const Text('Start Quize'))
       ],
      ),
      );
  }
}