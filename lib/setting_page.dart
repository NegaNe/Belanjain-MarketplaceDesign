import 'package:flutter/material.dart';

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
          const SizedBox(
            width: 100,
            height: 60,
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
                padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                child: Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
