import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_details_page.dart';

import '../../models/catalog.dart';
import 'catalog_items.dart';

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
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailsPage(catalogItem: items))),
            child: CatalogItem(items: items));
      },
    );
  }
}
