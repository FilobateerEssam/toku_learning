import 'package:flutter/material.dart';
import 'package:toku_learning/Components/CategoryItems.dart';
import 'package:toku_learning/Screens/ColorsPage.dart';
import 'package:toku_learning/Screens/FamilyMembersPage.dart';
import 'package:toku_learning/Screens/NumbersPage.dart';
import 'package:toku_learning/Screens/PhrasesPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF6DB),
        appBar: AppBar(
          title: Text(
            'Toku Learning',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xff46322B),
        ),
        body: Column(
          children: [
            CategoryItems(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return NumbersPage();
                    }));
              },
              text: "Numbers",
              color: Colors.orange,
            ),
            CategoryItems(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Familymemberspage();
                    }));
              },
              text: "Family Members",
              color: Colors.green,
            ),
            CategoryItems(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Colorspage();
                    }));
              },
              text: "Colors",
              color: Colors.purple,
            ),
            CategoryItems(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Phrasespage();
                    }));
              },
              text: "Phrases",
              color: const Color.fromARGB(255, 83, 169, 240),
            ),
          ],
        ));
  }
}