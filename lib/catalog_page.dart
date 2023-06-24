import 'dart:html';

import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Row(
              children: [
                Row(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                      height: 75,
                      width: 75,
                    ),
                    Text('Sony Official Store')
                  ],
                )
              ],
            ),
          ),
          const Column(
            children: [
              Row(
                children: [
                  Text('1x'),
                  Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                    height: 50,
                    width: 50,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [Text('PlayStation 5')],
                      ),
                      Row(
                        children: [Text('Rp. 8.999.999')],
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
