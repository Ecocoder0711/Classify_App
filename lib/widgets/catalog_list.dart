import 'package:classify/models/catalog.dart';
import 'package:classify/pages/home_page_detail.dart';
import 'package:classify/widgets/catalog_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageDetail(catalog : catalog))),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
