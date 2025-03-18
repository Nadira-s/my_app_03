import 'package:flutter/material.dart';
import 'package:my_app_03/models/shop.dart';
import 'package:my_app_03/pages/cart_page.dart';
import 'package:my_app_03/pages/intro_page.dart';
import 'package:my_app_03/pages/shop_page.dart';
import 'package:provider/provider.dart';
import 'theme/light_mode.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const ShopApp(),
    ) as Widget,
  );
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
