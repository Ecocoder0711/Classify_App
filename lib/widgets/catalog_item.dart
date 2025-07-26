// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:classify/widgets/catalog_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:classify/models/item.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.images[0]).h32(context),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg
                    .color(context.theme.primaryColor)
                    .bold
                    .make(),
                catalog.description.text
                    .textStyle(context.captionStyle)
                    .maxLines(2)
                    .overflow(TextOverflow.ellipsis)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10),
                    "₹${catalog.price}".text.bold.xl.make().p16(),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // We will add functionality here later.
                    //   },
                    //   // ElevatedButton.styleFrom is a cleaner constructor for styling.
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: context.theme.highlightColor,
                    //     shape: const StadiumBorder(),
                    //   ),
                    //   child: "Add to Order".text.white.make(),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
