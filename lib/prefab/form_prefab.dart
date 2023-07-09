import 'package:flutter/material.dart';

class CardReuseable extends StatelessWidget {
  const CardReuseable({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        //copy from here
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.pushNamed(context, '/product');
              },
              child: Container(
                  // height: 100,
                  child: Column(children: [
                Image(
                  image: NetworkImage(url),
                  height: 100,
                ),
                Text('PlayStation 5'),
                Text('Rp. 9000')
              ])),
            ),
          ),
        ),
      ), //to here
      Expanded(
        //copy from here
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.pushNamed(context, '/product');
              },
              child: Container(
                  // height: 100,
                  child: Column(children: [
                Image(
                  image: NetworkImage(url),
                  height: 100,
                ),
                Text('PlayStation 5'),
                Text('Rp. 9000')
              ])),
            ),
          ),
        ),
      ),
    ]);
  }
}
