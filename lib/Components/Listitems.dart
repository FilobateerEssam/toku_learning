import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_learning/Components/ItemInfo.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class Listitems extends StatelessWidget {
  const Listitems({super.key, required this.itemmodel, required this.color});

  final Itemmodel itemmodel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(
              itemmodel.image!,
            ),
          ),
          Expanded(child: ItemInfo(item: itemmodel)),
        ],
      ),
    );
  }
}


