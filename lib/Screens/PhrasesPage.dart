import 'package:flutter/material.dart';
import 'package:toku_learning/Components/Listitems.dart';
import 'package:toku_learning/Components/PhrasesItems.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class Phrasespage extends StatelessWidget {
  const Phrasespage({super.key});

  // ONE Obj
  // final Number one = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     jpName: "inchi",
  //     enName: "one");

// We Need List of Obj

  final List<Itemmodel> Phrases_List = const [
    Itemmodel(
      jpName: "いくつですか",
      enName: "are you coming",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    Itemmodel(
      jpName: "はい、行きます",
      enName: "yes, i am coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
    Itemmodel(
      jpName: "お名前は何ですか",
      enName: "what is your name",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    Itemmodel(
      enName: "where are you going",
      jpName: "どこへ行きますか",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    Itemmodel(
      enName: "don't forgot to subscripe",
      jpName: "忘れずに購読してください",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    Itemmodel(
      enName: "how are you feeling",
      jpName: "気分はどうですか",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Itemmodel(
      enName: "i love anime",
      jpName: "私はアニメが大好きです",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    Itemmodel(
      enName: "i love programming",
      jpName: "私はプログラミングが大好きです",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    Itemmodel(
      enName: "programming is easy",
      jpName: "プログラミングは簡単です",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: Phrases_List.length,
        itemBuilder: (context, count) {
          print(count);
          return PhrasesItems(
            color: Color.fromARGB(255, 83, 169, 240),
            itemmodel: Phrases_List[count],
          );
        },
      ),
    );
  }
}
