import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final isNetworkImage = image.startsWith('http');
    return (isNetworkImage
            ? Image.network(image, fit: BoxFit.cover)
            : Image.asset(image, fit: BoxFit.cover))
        .box
        .rounded
        .p8
        .color(Colors.white)
        .make()
        .p16()
        .wh32(context);
  }
}
