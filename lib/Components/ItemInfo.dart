import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_learning/Models/itemmodel.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final Itemmodel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                item.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () async {
            // play sound
            print("sound Play");

            final player = AudioPlayer();
            await player.play(AssetSource(item.sound));
            print("sound worked");
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 32,
          ),
        )
      ],
    );
  }
}
