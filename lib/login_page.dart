import 'package:flutter/material.dart';

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
              SizedBox(height: 10),
              Center(
                  child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text(
                  "Need an Account? Register Here",
                  style: TextStyle(
                      fontFamily: 'RalewayReg',
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF6D6E4C)),
                ),
              ))
            ]));
  }
}
