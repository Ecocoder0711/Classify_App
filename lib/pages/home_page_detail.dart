// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:classify/models/item.dart';

class HomePageDetail extends StatefulWidget {
  final Item catalog;
  const HomePageDetail({super.key, required this.catalog});

  @override
  State<HomePageDetail> createState() => _HomePageDetailState();
}

class _HomePageDetailState extends State<HomePageDetail> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      backgroundColor: context.cardColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.4,
              child: PageView.builder(
                itemCount: widget.catalog.image,
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return Hero(
                    tag: Key("${widget.catalog.id}_$index"),
                    child: Image.network(
                      widget.catalog.images[index],
                      fit: BoxFit.contain,
                    ).p16(),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.catalog.images.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: 8,
                  width: _currentPage == index ? 24 : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? context.accentColor
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            20.heightBox,
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        widget.catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        10.heightBox,
                        "\$${widget.catalog.price}".text.xl2.bold.make().p8(),
                        20.heightBox,
                        widget.catalog.description.text.xl.make().px16(),
                      ],
                    ).py32(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
