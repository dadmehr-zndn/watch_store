import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[200],
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'product list',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
