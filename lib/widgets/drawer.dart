import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imageUrl =
      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202211/untitled-1_0-one_one.jpg?VersionId=2UvgyBhEFLLMzztCbeFTTShGb9c33ddU";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: const Text(
                  "Anil Kumar",
                  style: TextStyle(color: Colors.white),
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
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.cyan,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.cyan,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.cyan,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style:
                    TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
