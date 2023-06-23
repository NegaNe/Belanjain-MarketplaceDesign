import 'package:flutter/material.dart';

class BoxReuseable extends StatelessWidget {
  BoxReuseable({this.text, required this.container});
  final Container container;
  final Text? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(color: Colors.amber),
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.only(left: 10),
      child: container,

      // backgroundColor: Colors.amber,
      // body: text,
    );
  }
}
