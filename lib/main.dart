import 'package:flutter/material.dart';
import 'package:flutter_first_projectt/screens/homw_screen.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
