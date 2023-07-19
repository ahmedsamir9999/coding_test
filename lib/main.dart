import 'package:flutter/material.dart';

void main() {
  runApp(const CodingTest());
}

class CodingTest extends StatelessWidget {
  const CodingTest({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
    );
  }
}
