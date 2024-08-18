import 'package:flutter/material.dart';
import 'package:toku_learning/Components/Listitems.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class Familymemberspage extends StatelessWidget {
  const Familymemberspage({super.key});

  // ONE Obj
  // final Number one = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     jpName: "inchi",
  //     enName: "one");

// We Need List of Obj

  final List<Itemmodel> fM = const [
    Itemmodel(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        enName: "father",
        jpName: "chichi"
        ),
    Itemmodel(
        sound: "sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        enName: "mother",
        jpName: "haha"
    ),
    Itemmodel(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        enName: "son",
        jpName: "musuko"
    ),
    Itemmodel(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        enName: "daughter",
        jpName: "musume"
    ),
    Itemmodel(
        sound: "sounds/family_members/older bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        enName: "older brother",
        jpName: "ani"
    ),
    Itemmodel(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        enName: "younger brother",
        jpName: "otouto"
    ),
    Itemmodel(
        sound: "sounds/family_members/older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        enName: "older sister",
        jpName: "ane"
    ),
    Itemmodel(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        enName: "younger sister",
        jpName: "imouto"
    ),
    Itemmodel(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        enName: "grandmother",
        jpName: "obaa-san"
    ),
    Itemmodel(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        enName: "grandfather",
        jpName: "ojii-san"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: fM.length,
        itemBuilder: (context, count) {
          print(count);
          return Listitems(
            color: Colors.green,
            itemmodel: fM[count],
          );
        },
      ),
    );
  }
}
