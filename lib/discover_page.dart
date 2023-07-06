import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Discover'),
            Row(
              children: [
                Icon(Icons.shopping_cart_rounded),
                Icon(Icons.notifications)
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        child: const Column(
          children: [TextField()],
        ),
      )),
    );
  }
}
