import 'package:darsda/screens/home_screen.dart';
import 'package:darsda/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        SecondScreen.id: (context) => const SecondScreen(),
      },
    );
  }
}


