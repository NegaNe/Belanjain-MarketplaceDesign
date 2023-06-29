// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  final String URL =
      'https://static.vecteezy.com/system/resources/previews/017/221/783/original/google-pay-logo-transparent-free-png.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petter Official Store'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.chat),
            tooltip: 'Chat',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a cart list')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Cart',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a cart list')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a setting')));
            },
          ),
        ],
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 150,
          ),
          const SizedBox(
            height: 55,
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text(
                  'To Pay',
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text('To Ship'),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text('To Receive'),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text('To Rate'),
              ]),
            ),
          ),
          SizedBox(
            height: 300,
          )
        ],
      ),
    );
  }
}
