import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Anil";
    double pi = 3.14;
    bool isMale = true;
    var day = "Thursday";
    const py = 3.14;

    return MaterialApp(home: HomePage());
  }
}
