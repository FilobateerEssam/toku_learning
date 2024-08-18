import 'package:flutter/material.dart';
import 'package:toku_learning/Components/Listitems.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  // ONE Obj
  // final Number one = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     jpName: "inchi",
  //     enName: "one");

// We Need List of Obj

  final List<Itemmodel> numbers = const [
    Itemmodel(
        sound: "sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        enName: "one",
        jpName: "inchi"),
    Itemmodel(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        enName: "two",
        jpName: "ni"),
    Itemmodel(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        enName: "three",
        jpName: "san"),
    Itemmodel(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        enName: "four",
        jpName: "yon"),
    Itemmodel(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        enName: "five",
        jpName: "go"),
    Itemmodel(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        enName: "six",
        jpName: "roku"),
    Itemmodel(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        enName: "seven",
        jpName: "nana"),
    Itemmodel(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        enName: "eight",
        jpName: "hachi"),
    Itemmodel(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        enName: "nine",
        jpName: "kyu"),
    Itemmodel(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        enName: "ten",
        jpName: "ju"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, count) {
          print(count);
          return Listitems(
            color: Colors.orange,
            itemmodel: numbers[count]);
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Numbersitem> Numbersitemlist = [];

  //   for (int i = 0; i < numbers.length; i++) {
  //     Numbersitemlist.add(Numbersitem(number: numbers[i]));
  //   }
  //   return Numbersitemlist;
  // }
}
