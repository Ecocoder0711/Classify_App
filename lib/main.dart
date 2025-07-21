import 'package:classify/pages/home_page.dart';
import 'package:classify/pages/splash_page.dart';
import 'package:classify/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

// The store remains the same
class MyStore extends VxStore {}

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashRoute,
      // Update the routes map
      routes: {
        MyRoutes.splashRoute: (context) => const SplashPage(),
        MyRoutes.homeRoute: (context) => const HomePage(), // Replaced LoginPage
      },
    );
  }
}
