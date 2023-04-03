import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/on_boarding_page.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    getSharePrefDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/login_image2.png",height: 300,),
                const SizedBox(height: 10.0,),
                "Catalog App".text.color(MyThemes.darkTextColor).align(TextAlign.center).xl2.bold.make().py12()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getSharePrefDetails() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isLoggedIn = sharedPreferences.getBool(Constants.isLogin) ?? false;

    var duration = const Duration(seconds: 5);
    Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          if (isLoggedIn) {
            return const HomePage();
          } else {
            return const OnBoardingPage();
          }
        },
      ));
    });
  }
}
