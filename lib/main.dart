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
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Register')),
//         body: Column(
//           children: [
//             const Text('Email'),
//             TextField(
//               controller: _email,
//               decoration: const InputDecoration(
//                   hintText: 'Enter Email',
//                   hintStyle: TextStyle(
//                     color: Colors.green,
//                     fontSize: 16,
//                   ),
//                   border: OutlineInputBorder(
//                       borderRadius:
//                           BorderRadius.all(Radius.elliptical(10, 10)))),
//             ),
//             const Text('Password'),
//             TextField(
//               controller: _password,
//               decoration: const InputDecoration(hintText: 'Enter Password'),
//             ),
//             TextButton(
//               onPressed: () async {},
//               child: const Text('Register'),
//             )
//           ],
//         ));
//   }
// }

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
          // TextButton(
          //   style: ButtonStyle(
          //     foregroundColor: MaterialStateProperty.all<Color>(Color(0XFF6D6E4C)),
          //     backgroundColor: MaterialStateProperty.all<Color>(Color(0XFF6D6E4C)),
          //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          // RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(7),
          //   ),
          //     ),
          //   ),
          //     onPressed: () {},
          //     child: const Column(
          //       //Widthnya gw bikin manual -kf kiri kanan tab 26x

          //       children: [

          //       Text('                                                 SIGN UP                                                  ',
          //       style: TextStyle(
          //         fontFamily: 'Lato',
          //         fontWeight: FontWeight.w900,
          //         color: Color(0xffFFFFFF),
          //       )
          //       )
          //       ],
          //     )
          //     ),

          Container(
            alignment: Alignment.center, 
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0)), backgroundColor: Color(0XFF6D6E4C)),
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

          const SizedBox(height: 5),
          // TextButton(
          //     // style: ButtonStyle(alignment: Alignment.center),
          //     onPressed: () {
          //       Navigator.pushNamed(context, '/login');
          //     },
          //     child: const Column(
          //       children: [
          //         Text(
          //           'Already have Account? Login',
          //           textAlign: TextAlign.center,
          //         ),
          //       ],
          //     )
          //     )

          TextButton(
              onPressed: () {},
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                  ),
                  TextButton(
                      onPressed: () {
                          Navigator.pushNamed(context, '/login');
                      },
                      child: const Text("Already Have an Account? Login Here"))
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
        Container(
            alignment: Alignment.center, 
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0)), backgroundColor: Color(0XFF6D6E4C)),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(132, 5, 132, 5),
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
        ],
      ),
    );
  }
}
