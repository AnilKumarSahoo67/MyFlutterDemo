import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/themes.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding:const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: MyThemes.darkTextColor),),
            ),
          ),
        )
    );
  }
}
