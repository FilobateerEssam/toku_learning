import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  CategoryItems({this.text, this.color , this.onTap});

  String? text;
  Color? color;
  Function() ? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
        color: color,
        height: 65,
        width: double.infinity,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

