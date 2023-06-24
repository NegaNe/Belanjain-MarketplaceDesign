// 5

import 'package:flutter/material.dart';
import 'register_page.dart';
import 'login_page.dart';
import 'setting_page.dart';
import 'user_profile.dart';
import 'catalog_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/setting': (context) => const Setting(),
        '/profile': (context) => const UserProfile(),
        '/catalog': (context) => const Catalog(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
