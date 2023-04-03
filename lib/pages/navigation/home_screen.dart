import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../../utils/MyRoutes.dart';
import '../../widgets/home_widgets/catalog_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<Items> dummyList = CatalogModel.product;
  late GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    _scaffoldKey = GlobalKey();
    super.initState();
    loadData();
  }

  @override
  void dispose() {
    _scaffoldKey.currentState?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.pushNamed(context, MyRouts.cartRoutes),
            focusColor: context.theme.accentColor,
            backgroundColor: context.theme.buttonColor,
            child: const Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
          ),
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.menu),onPressed: () => _scaffoldKey.currentState?.openDrawer()),
          title: Text("Catalog App",style: TextStyle(color: MyThemes.darkTextColor,fontWeight: FontWeight.bold),),),
        body: RefreshIndicator(
          child: Column(
            children: [
              if (dummyList.isNotEmpty && dummyList.length > 2)
                CatalogList(list: dummyList).p8().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
          onRefresh: () {
            return Future.delayed(const Duration(seconds: 2),(){

            });
          },
        )
      ),
    );
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    // var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // var jsonDecodeData = jsonDecode(catalogJson);
    // var productData = jsonDecodeData["Products"];
    setState(() {
      dummyList = List.generate(30, (index) => CatalogModel.product[0]);
    });
  }
}
