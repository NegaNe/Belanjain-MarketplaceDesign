// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 150,
          ),
          SizedBox(
            height: 55,
          ),
          Expanded(
              child: RowReuseable(
            row: Row(
              children: [Column(), Column()],
            ),
          )),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
