import 'package:audioplayers/audioplayers.dart';

class Itemmodel {
  final String sound;
  final String ?  image;
  final String jpName;
  final String enName;

  const Itemmodel(
      {required this.sound,
       this.image,
      required this.enName,
      required this.jpName});

  
}
