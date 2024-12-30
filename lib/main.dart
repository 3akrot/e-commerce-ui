// lib/main.dart
import 'package:e_commerce_shopping_app2/screens/checkout_screen.dart';
import 'package:e_commerce_shopping_app2/screens/home_screen.dart';
import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
            routes: {

        '/checkout_screen': (context) => CheckoutScreen(totalAmount: 950.54,),

      },
    );
  }
}
