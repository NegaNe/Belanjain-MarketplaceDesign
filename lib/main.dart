// 5

import 'package:flutter/material.dart';

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
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFFFFFFFF),
        title: const Text(
          'B E L A N J A I N',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 35,
            fontWeight: FontWeight.w900,
            //tambahin 0XFF kalau mau ganti warna pake hex code
            color: Color(0XFF6D6E4C),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              'SIGN UP!',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF6D6E4C)),
            ),
          ),
          const SizedBox(height: 1),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Color(0XFF000000),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Hello there Sign Up to continue...',
              style: TextStyle(
                fontFamily: 'RalewayReg',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
          const SizedBox(height: 5),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
          const SizedBox(
            width: 100,
            height: 25,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0)),
                  backgroundColor: const Color(0XFF6D6E4C)),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.fromLTRB(128, 5, 128, 5),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/setting');
                    },
                    child: const Text(
                      "Already have an account? Login",
                      style: TextStyle(
                        fontFamily: 'RalewayReg',
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF6D6E4C),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFFFFFFFF),
        title: const Text(
          'B E L A N J A I N',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 35,
            fontWeight: FontWeight.w900,
            color: Color(0XFF6D6E4C),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              'LOG IN!',
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color(0XFF6D6E4C)),
            ),
          ),
          const SizedBox(height: 1),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Color(0XFF000000),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Hello there Log In to continue...',
              style: TextStyle(
                fontFamily: 'RalewayReg',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
          const SizedBox(
            width: 100,
            height: 17,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0)),
                  backgroundColor: const Color(0XFF6D6E4C)),
              onPressed: () {
                // Navigator.pushNamed(context, '/');
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(133, 5, 133, 5),
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      "Need an account? Register",
                      style: TextStyle(
                        fontFamily: 'RalewayReg',
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF6D6E4C),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Account Settings',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0XFFDDDDDD),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 0),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints.maxWidth,
                  height: 70, // Menggunakan maxWidth dari constraints
                  color: const Color(0XFFDDDDDD),
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 0,
                        bottom: -2, // Jarak antara Container dan Text
                        child: Text(
                          'My Account',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF7B7B7B),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Privacy & Safety',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'My Address',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Credentials',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 0),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints.maxWidth,
                  height: 40, // Menggunakan maxWidth dari constraints
                  color: const Color(0XFFDDDDDD),
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 0,
                        bottom: -2, // Jarak antara Container dan Text
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF7B7B7B),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Chat Settings',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Notifications Settings',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Privacy Settings',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Language',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),
          
            const SizedBox(height: 0),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    padding: const EdgeInsets.only(left: 18),
                    width: constraints.maxWidth,
                    height: 40, // Menggunakan maxWidth dari constraints
                    color: const Color(0XFFDDDDDD),
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 0,
                          bottom: -2, // Jarak antara Container dan Text
                          child: Text(
                            'Support',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF7B7B7B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Help',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Rules',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'FAQ',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 3),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding: const EdgeInsets.only(left: 18),
                  width: constraints
                      .maxWidth, // Menggunakan maxWidth dari constraints
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFFFFF),
                    border: Border.all(
                      color: Color(0XFF808080), // Warna tepi
                      width: 1, // Lebar tepi
                    ),
                  ),
                  child: const Text(
                    'Terms And Conditions',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF000000),
                    ),
                  ),
                );
              },
            ),

          ],
        ));
  }
}
