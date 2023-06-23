import 'package:flutter/material.dart';

class BoxReuseable extends StatelessWidget {
  BoxReuseable({this.text});

  final Text? text;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Text(''),
    );
  }
}
