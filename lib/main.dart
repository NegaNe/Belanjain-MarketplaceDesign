// import 'dart:html';
// import 'dart:math';
// import 'package:flutter/foundation.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late final TextEditingController _email;
//   late final TextEditingController _password;

//   @override
//   void initState() {
//     _email = TextEditingController();
//     _password = TextEditingController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _email.dispose();
//     _password.dispose();
//     super.dispose();
//   }

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: const Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Login'),
                  ]),
            ),
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(hintText: 'Enter Email'),
                      )
                    ],
                  ),
                ),
                // TextField(
                //   decoration: InputDecoration(hintText: 'Enter Password'),
                // ),
              ],
            ),
          ],
        ));
  }
}
