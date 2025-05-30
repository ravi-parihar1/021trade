import 'package:flutter/material.dart';
import 'screens/open_orders_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Orders',
      debugShowCheckedModeBanner: false,
      home: OpenOrdersScreen(),
    );
  }
}
