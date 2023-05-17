import 'package:flutter/material.dart';

class CartFoodPage extends StatefulWidget {
  const CartFoodPage({super.key});

  @override
  State<CartFoodPage> createState() => _CartFoodPageState();
}

class _CartFoodPageState extends State<CartFoodPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Keranajang',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
