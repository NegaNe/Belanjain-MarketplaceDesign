// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String _name = "John Doe";
  String _email = "johndoe@example.com";
  String _address = "123 Main St";
  String _city = "Anytown";
  String _state = "CA";
  String _zipcode = "12345";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Name: $_name",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Email: $_email",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Address: $_address",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              "City: $_city",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              "State: $_state",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Zipcode: $_zipcode",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              child: const Text("Edit Profile"),
              onPressed: () {
                // Navigate to profile editing screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
