
import 'package:flutter/material.dart';
import 'package:flutter_first_projectt/components/category_item.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF6DB),
appBar: AppBar(
  backgroundColor: Color(0xff46322B),
  title: Text('Toku',
  style: TextStyle(
    color: Colors.white,
  ),),
),
body: Column(
  children: [
   Category(
      text: "NUMBERS",
      color: Color.fromARGB(255, 98, 88, 231),
    ),

    Category(
      text: "FamilyMember",
      color: Color.fromARGB(255, 226, 69, 232),
    ),
    Category(
      text: "Colors",
      color: Color.fromARGB(255, 83, 227, 136),
    ),
    Category(
      text: "Pharses",
      color: Color.fromARGB(255, 227, 162, 97),
    ),
  ],
),

      );
  }
}

