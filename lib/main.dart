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
        backgroundColor: Color(0XFFFFFFFF),
        title: const Text('B E L A N J A I N',
        style: TextStyle(
          fontFamily: 'Lato', 
          fontSize: 35,
          fontWeight: FontWeight.w900,
          //tambahin 0XFF kalau mau ganti warna pake hex code
          color: Color(0XFF6D6E4C),
          ),
          ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            const Text('SIGN UP!', 
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color(0XFF6D6E4C)
            ),
            ),
            const SizedBox(
              width: 50,
              height: 25,
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
              obscureText: true,
            ),
            const SizedBox(height: 5),
            TextField(
              decoration: const InputDecoration(
                hintText: ('Confirm Password'),
                contentPadding: EdgeInsets.all(25),
                border: OutlineInputBorder(borderSide: BorderSide(width: 2.0)),
              ),
              controller: _password,
              obscureText: true,
            ),
            const SizedBox(
            width: 100,
            height: 20,
              ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0XFF6D6E4C)),
              ),
                onPressed: () {},
                child: const Column(
                  //Widthnya gw bikin manual -kf kiri kanan tab 21x
                  children: [Text('                                        SIGN UP                                         ',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFFFFFF),
                  ))],
                )),
            const SizedBox(height: 25),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Column(
                  children: [Text('Already have Account? Login')],
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
      ),
      body: Column(
        children: [
          Text('Some Login Text :)'),
          const TextField(
            decoration: InputDecoration(
              hintText: ('ENTER EMAIL'),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(15, 25, 25, 15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Enter Email',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 25, 15),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
            ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Enter Password',
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5)),
                obscureText: true,
              )),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Column(
                  children: [Text('Login')],
                )),
            )
        ],
      ),
    );
  }
}
