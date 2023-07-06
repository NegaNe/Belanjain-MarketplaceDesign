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
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                padding: EdgeInsets.only(left: 10),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.apps),
                      icon: Icon(
                        Icons.search,
                      ),
                      hintText: 'Search'),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.4),
                    color: Color.fromRGBO(109, 110, 76, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.fromLTRB(5, 25, 5, 25),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Electronic',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Appliance'),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.4),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(5, 25, 5, 25),
                  padding: EdgeInsets.all(10),
                  child: Text('Headphone'),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1), bottom: BorderSide(width: 1))),
              alignment: Alignment.center,
              child: Text('MEGA SALE',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            //BOX OREN
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    children: [],
                  ),
                  Row(
                    children: [
                      const Image(
                        image: NetworkImage(
                            'https://images.tokopedia.net/img/cache/215-square/shops-1/2018/3/19/2972075/2972075_69c19edf-5f84-4569-8226-9a9e51e54559.jpg'),
                        width: 40,
                        height: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'ASUS Official Store\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: 'Online', style: TextStyle(fontSize: 11))
                        ])),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      const Column(
                        children: [
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: 'From\n',
                            ),
                            TextSpan(text: 'Rp. 9.999.999\n'),
                            TextSpan(text: 'To\n'),
                            TextSpan(text: 'Rp. 6.499.999')
                          ])),
                        ],
                      ),
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image(
                              image: NetworkImage(
                                  'https://fdn2.gsmarena.com/vv/bigpic/asus-zenfone-9-new.jpg'),
                              width: 150,
                              height: 150,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
