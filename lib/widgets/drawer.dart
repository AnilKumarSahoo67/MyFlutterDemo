import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/utils/MyRoutes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  String imageUrl =
      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202211/untitled-1_0-one_one.jpg?VersionId=2UvgyBhEFLLMzztCbeFTTShGb9c33ddU";

  static String userName = "";
  @override
  void initState() {
    super.initState();
    getUserName();
  }

  Future<void> getUserName() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      userName = sharedPreferences.getString(Constants.userName)!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.theme.canvasColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: context.theme.buttonColor),
              curve: Curves.easeInOut,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: context.theme.buttonColor),
                accountName: Text(
                  (userName.isNotEmpty) ? userName : "Anil Sahoo",
                  style: const TextStyle(color: Colors.white),
                ),
                accountEmail: const Text(
                  "sahooanilkumar@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Color(0xff403b58), fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Color(0xff403b58), fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Color(0xff403b58), fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  //logout
                  showAlertDialog();
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    "Logout",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                        color: Color(0xff403b58), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              leading: const Icon(
                CupertinoIcons.arrow_uturn_right,
              ),
            )
          ],
        ),
      ),
    );
  }

  void showAlertDialog() {
    Widget okButton = TextButton(
        onPressed: () {
          Navigator.pop(context);
          logout();
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
        },
        child: const Text("Ok"));

    var alertDialog = AlertDialog(
      title: const Text("Alert!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      content: const Text("Hey are you sure you want to logout"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: ((context) {
        return alertDialog;
      }),
    );
  }

  void logout() async {
    var sharedPref = await SharedPreferences.getInstance();
    sharedPref.setBool(Constants.isLogin, false);
  }
}
