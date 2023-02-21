import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text("My Flutter app development need $days days"),
      ),
      drawer: MyDrawer(),
    );
  }
}
