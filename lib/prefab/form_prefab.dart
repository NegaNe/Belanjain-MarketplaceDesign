import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key, this.text});

  final Text? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(''),
    );
  }
}
