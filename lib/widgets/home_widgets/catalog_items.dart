import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class CatalogItem extends StatelessWidget {
  final Items items;

  const CatalogItem({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        // Hero(
        //     tag: Key(items.id.toString()),
        //     child: CatalogImage(image: items.image)),
        CatalogImage(image: items.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            items.name.text.bold.lg.color(context.accentColor).make(),
            5.heightBox,
            items.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$ ${items.price}".text.color(context.accentColor).bold.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Add to cart".text.color(Colors.white).make())
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(130).shadowXs.make().py8().px4();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .cyan100
        .p8
        .rounded
        .make()
        .p12()
        .w40(context);
  }
}
