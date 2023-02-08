import 'package:flutter/material.dart';
import 'package:pitogo_ecommerce_app/pages/cartpage.dart';
import 'package:pitogo_ecommerce_app/pages/itempage.dart';

import 'pages/homepage.dart' show HomePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/" : (context) => const HomePage(),
        "cartPage":(context) => const CartPage(),
        "itemPage":(context) => ItemPage(),
      },
    );
  }
}
