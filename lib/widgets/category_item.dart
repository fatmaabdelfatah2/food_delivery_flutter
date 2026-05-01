import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryItem({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,

      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
