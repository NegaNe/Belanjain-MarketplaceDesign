import 'package:flutter/material.dart';
import 'package:marketplace/prefab/form_prefab.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  final String url =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png';
  // final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
  // final List<int> colorCodes = <int>[600, 500, 100, 200, 400, 300];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
                margin: EdgeInsets.all(15),
                child: Row(children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.notifications)
                ]))
          ],
          title: Text('Discover'),
        ),
        body: Container(
            child: Column(children: [
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.only(right: 100),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none),
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.blue.shade300,
                    child: Column(
                      children: [
                        Text(
                          'Featured',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Row(
                          children: [
                            const Column(
                              children: [
                                Text('ASUS Official Store'),
                                Text('ASUS Zenfone 10'),
                                Text('Rp. 8.999.999'),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 3, color: Colors.white),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Image(
                                image: NetworkImage(
                                    'https://media.pricebook.co.id/images/product/L/98946_L_1.jpg'),
                                width: 150,
                                height: 150,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              CardReuseable(url: url),
              CardReuseable(url: url),
              CardReuseable(url: url),
              CardReuseable(url: url),
              CardReuseable(url: url),
              CardReuseable(url: url),
              CardReuseable(url: url),
              CardReuseable(url: url),
            ],
          ))
        ])));
  }
}
