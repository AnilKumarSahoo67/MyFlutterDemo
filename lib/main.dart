import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/MyRoutes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(),
      routes: {
        // "/": (context) => LoginPage(),
        MyRouts.loginRoute: (context) => LoginPage(),
        MyRouts.homeRoute: (context) => HomePage(),
      },
    );
  }
}
