import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

   @override
  State<Quiz> createState() {
   return _QuizStae();
  }

}

class _QuizStae extends State<Quiz>
{
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen =StartScreen(SwitchScreen);
    super.initState();
  }
  void SwitchScreen()
  {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
    
  }
  @override

  Widget build(context){
    return MaterialApp(
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
        child: activeScreen,
        ),
   ),
   );
  }
}