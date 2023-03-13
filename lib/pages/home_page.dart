import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/MyRoutes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Items> dummyList = CatalogModel.product;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRouts.cartRoutes),
        focusColor: context.theme.accentColor,
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
        ),
        backgroundColor: context.theme.buttonColor,
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m12,
          child: Column(
            children: [
              CatalogHeader(),
              if (dummyList.isNotEmpty && dummyList.length > 2)
                CatalogList(list: dummyList).py12().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    // var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // var jsonDecodeData = jsonDecode(catalogJson);
    // var productData = jsonDecodeData["Products"];

    dummyList = List.generate(20, (index) => CatalogModel.product[0]);
    setState(() {});
  }
}
