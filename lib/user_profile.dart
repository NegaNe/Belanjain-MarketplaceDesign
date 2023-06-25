// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  final String _contents = 'MyInsides';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petter Official Store'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'My Purchase',
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
