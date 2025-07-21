import 'dart:async';
import 'package:classify/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).canvasColor,
              Theme.of(context).primaryColor.withAlpha(180),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: ScaleTransition(
              scale: _animation,
              child: VStack([
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // A semi-transparent white circle for the background
                    color: Colors.black12.withAlpha(64),
                  ),
                  child: const Icon(
                    Icons.inventory_2_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                // Image.asset('assets/images/logo.png', width: 120),
                10.heightBox, // Increased the space
                "Classify ".text.xl4.color(Colors.black).bold.make(),
              ], crossAlignment: CrossAxisAlignment.center),
            ),
          ),
        ),
      ),
    );
  }
}
