import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        toolbarHeight: 110,
        //elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 25,
            top: 25,
          ),
          child: Text(
            'Payment',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0XFF000000),
            ),
          ),
        ),
      ),


/* masih gatau diapain
body: Container(
        color: Color.fromARGB(255, 117, 118, 111),
        alignment: Alignment.center,
        child:  Column(
          children: [
            
            Container(
              color: Colors.white,
            )
          ],
        ),
      ),
*/
    );
  }
}