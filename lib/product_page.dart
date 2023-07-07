import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product',
          style: TextStyle(
            fontFamily: 'OswaldReg',
          ),
        ),
      ),
      body: Column(children: [
        Container(
          child: const Row(
            children: [
              Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                width: 300,
                height: 300,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
