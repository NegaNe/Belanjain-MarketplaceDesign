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
        title: const Text('Register'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('Register Here'),
            const SizedBox(
              width: 50,
              height: 100,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: ('Email Address'),
                contentPadding: EdgeInsets.all(25),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
              ),
              controller: _email,
            ),
            const SizedBox(height: 5),
            TextField(
              decoration: const InputDecoration(
                hintText: ('Password'),
                contentPadding: EdgeInsets.all(25),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
              ),
              controller: _password,
            ),
            const SizedBox(height: 25),
            TextButton(
                onPressed: () {},
                child: const Column(
                  children: [Text('Login')],
                )),
            const SizedBox(height: 25),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Column(
                  children: [Text('Login Instead')],
                ))
          ],
        ),
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
      title: const Text('Login'),
    ));
  }
}
