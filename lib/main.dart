import 'package:flutter/material.dart';
import 'package:food_app/open.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      title: "Food App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}