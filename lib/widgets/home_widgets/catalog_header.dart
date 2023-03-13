import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        const Icon(Icons.menu, color: Colors.black).p12().w10(context),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Catalog App"
                .text
                .xl3
                .bold
                .color(context.theme.accentColor)
                .make()
                .px12(),
          ],
        ))
      ],
    )).make();
  }
}
