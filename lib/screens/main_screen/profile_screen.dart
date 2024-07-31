import 'package:flutter/material.dart';
import 'package:watch_store/screens/product_single_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red[200],
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SizedBox(
            height: 30,
            width: 130,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductSingleScreen(),
                    )),
                child: const Text('see product')),
          ),
        ),
      ),
    );
  }
}
