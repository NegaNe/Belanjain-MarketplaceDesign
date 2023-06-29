import 'dart:ffi';

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

class RowReuseable extends StatelessWidget {
  // const RowReuseable({super.key});
  const RowReuseable({super.key, this.row});
  final Row? row;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(color: Color(0XFF6D6E4C)),
      // margin: EdgeInsets.all(2),
      padding: EdgeInsets.only(left: 30),
      child: row,

      // backgroundColor: Colors.amber,
      // body: text,
    );
  }
}
