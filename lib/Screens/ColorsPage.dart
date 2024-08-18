import 'package:flutter/material.dart';
import 'package:toku_learning/Components/Listitems.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class Colorspage extends StatelessWidget {
  const Colorspage({super.key});

  // ONE Obj
  // final Number one = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     jpName: "inchi",
  //     enName: "one");

// We Need List of Obj

  final List<Itemmodel> clr = const [
    Itemmodel(
      image: "assets/images/colors/color_red.png",
      jpName: "aka",
      enName: "red",
      sound: "sounds/colors/red.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/color_green.png",
      jpName: "midori",
      enName: "green",
      sound: "sounds/colors/green.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/color_brown.png",
      jpName: "chairo",
      enName: "brown",
      sound: "sounds/colors/brown.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/color_gray.png",
      jpName: "haiiro",
      enName: "gray",
      sound: "sounds/colors/gray.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/color_black.png",
      jpName: "kuro",
      enName: "black",
      sound: "sounds/colors/black.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/color_white.png",
      jpName: "shiro",
      enName: "white",
      sound: "sounds/colors/white.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "kibiiro",
      enName: "dusty yellow",
      sound: "sounds/colors/dusty yellow.wav",
    ),
    Itemmodel(
      image: "assets/images/colors/yellow.png",
      jpName: "kiiro",
      enName: "yellow",
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: clr.length,
        itemBuilder: (context, count) {
          print(count);
          return Listitems(
            color: Colors.purple,
            itemmodel: clr[count],
          );
        },
      ),
    );
  }
}
