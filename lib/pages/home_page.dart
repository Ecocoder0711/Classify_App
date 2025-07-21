import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Catalog App".text.make(),
      ),
      body: Center(
        child: "Welcome to the Home Page!".text.xl2.make(),
      ),
    );
  }
}