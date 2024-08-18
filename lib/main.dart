import 'package:flutter/material.dart';
import 'package:toku_learning/Screens/HomePage.dart';

void main(){
  runApp(
    Toku_Learning()
  );
}

class Toku_Learning extends StatefulWidget {
  const Toku_Learning({super.key});

  @override
  State<Toku_Learning> createState() => _Toku_LearningState();
}

class _Toku_LearningState extends State<Toku_Learning> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}