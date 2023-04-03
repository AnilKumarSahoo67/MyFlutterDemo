import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/themes.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding:const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: MyThemes.darkTextColor),),
            ),
          ),
        )
    );
  }
}
