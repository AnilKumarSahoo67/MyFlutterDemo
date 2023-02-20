import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/Routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
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

    return MaterialApp(
      home: const LoginPage(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        // "/": (context) => LoginPage(),
        MyRouts.loginRoute: (context) => LoginPage(),
        MyRouts.homeRoute: (context) => HomePage(),
      },
    );
  }
}
