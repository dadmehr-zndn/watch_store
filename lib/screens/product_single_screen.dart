import 'package:flutter/material.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red[200],
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'product single',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
