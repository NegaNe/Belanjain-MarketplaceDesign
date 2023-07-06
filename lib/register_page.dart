import 'package:flutter/material.dart';

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
            height: 17,
          ),
          // Center(
          //     child: TextButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/setting');
          //   },
          //   child: const Text(
          //     "Have an Account? Login Here",
          //     style: TextStyle(
          //         fontFamily: 'RalewayReg',
          //         fontWeight: FontWeight.w600,
          //         color: Color(0XFF6D6E4C)),
          //   ),
          // )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Color(0XFF6D6E4C)),
              height: 40,
              width: 375,
              margin: EdgeInsetsDirectional.all(15),
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w900,
                      color: Color(0xffFFFFFF),
                    ),
                  )),
            ),
          ),
          SizedBox(height: 1),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                "Have an Account? Login Here",
                style: TextStyle(
                    fontFamily: 'RalewayReg',
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF6D6E4C)),
              ),
            ),
          ),

          Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/catalog');
                  },
                  child: const Text("Go To Catalog")),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  child: const Text('Go To Settings')),
              TextButton(
                  //copy dari sini
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: const Text('Go To Profile')),
              TextButton(
                  //copy dari sini
                  onPressed: () {
                    Navigator.pushNamed(context, '/payment');
                  },
                  child: const Text('Go To Payment')),
              TextButton(
                  //copy dari sini
                  onPressed: () {
                    Navigator.pushNamed(context, '/chat');
                  },
                  child: const Text('Go To Chat')),
            ],
          )
        ],
      ),
    );
  }
}
