// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';

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
      backgroundColor: MyThemes.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m12,
          child: Column(
            children: [
              CatalogHeader(),
              10.heightBox,
              if (dummyList.isNotEmpty && dummyList.length > 2)
                CatalogList(list: dummyList).expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    // var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // var jsonDecodeData = jsonDecode(catalogJson);
    // var productData = jsonDecodeData["Products"];

    dummyList = List.generate(20, (index) => CatalogModel.product[0]);
    setState(() {});
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        const Icon(Icons.menu, color: Colors.black)
            .p12()
            .w10(context)
            .color(Colors.white),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Catalog App"
                .text
                .xl3
                .bold
                .color(MyThemes.darkBluishColor)
                .make()
                .px12(),
          ],
        ))
      ],
    )).make();
  }
}

class CatalogList extends StatelessWidget {
  final List<Items> list;
  const CatalogList({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final items = list[index];
        return CatalogItem(items: items);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Items items;
  const CatalogItem({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: items.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            items.name.text.bold.lg.color(MyThemes.darkBluishColor).make(),
            5.heightBox,
            items.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$ ${items.price}".text.bold.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyThemes.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.color(Colors.white).make())
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.rounded.square(130).make().py8();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.p8.rounded.make().p12().w40(context);
  }
}
