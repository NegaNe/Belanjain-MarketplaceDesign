// import 'dart:html';

import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> store = <String>[
      'Sony',
      'Apple',
      'Cherry MX',
      'Smasnug'
    ];
    final List<String> product = <String>[
      'Sony PlayStation 4',
      'MacBook Air M2',
      'Cherry ',
      'Smasnug A54 8/256GB'
    ];
    final List<String> price = <String>[
      '8.999.999',
      '4.999.999',
      '1.999.999',
      '4.999.999'
    ];
    final List<String> imageList = <String>[
      '',
      '',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Cart '),
            Icon(Icons.shopping_cart),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 1,
            child: InkWell(
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0XFF6D6E4C),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Payment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
              onTap: () {
                Navigator.pushNamed(context, '/payment');
              },
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: store.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    const Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                      width: 25,
                      height: 25,
                    ),
                    Text(store[index],
                      style: TextStyle(
                        fontFamily: 'OswaldReg',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      ),
                  color: Color(0xffE0E0D9),
                  ),
                  child: Row(
                    children: [
                      const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                        height: 80,
                        width: 59,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [Text(product[index],
                            style: TextStyle(
                              fontFamily: 'OswaldReg',
                            ),
                            )],
                          ),
                          Row(
                            children: [Text('Rp. ${price[index]}',
                            style: TextStyle(
                              fontFamily: 'OswaldReg',
                            ),
                            ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
