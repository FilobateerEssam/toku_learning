import 'package:flutter/material.dart';
import 'package:toku_learning/Components/ItemInfo.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class PhrasesItems extends StatelessWidget {
  const PhrasesItems({super.key, required this.itemmodel, required this.color});

  final Itemmodel itemmodel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(item: itemmodel),
      );
  }
}
