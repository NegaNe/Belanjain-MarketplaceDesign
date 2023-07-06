import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              color: Colors.red,
              child: Text('data'),
            ),
          ),
          Title(color: Colors.black, child: Text('Discover'))
        ],
      )),
    );
  }
}
