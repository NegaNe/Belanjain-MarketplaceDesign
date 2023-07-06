// ignore_for_file: prefer_final_fields
import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  final String URL =
      'https://static.vecteezy.com/system/resources/previews/017/221/783/original/google-pay-logo-transparent-free-png.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.chat),
            color: Color(0xffFFFFFF),
            tooltip: 'Chat',
            onPressed: () {
              Navigator.pushNamed(context, '/chat');
              //ScaffoldMessenger.of(context).showSnackBar(
              //    const SnackBar(content: Text('This is a chat')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Color(0xffFFFFFF),
            tooltip: 'Cart',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a cart list')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            color: Color(0xffFFFFFF),
            tooltip: 'Setting',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a setting')));
            },
          ),
        ],
        backgroundColor: Color(0xff6D6E4C),
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xff6D6E4C),
            height: 140,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40,3, 0, 0),
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),
                      ),
                    borderRadius: BorderRadius.circular(50), 
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/seed/picsum/200/200'),
                      fit: BoxFit.cover,
                    ),
                  ),
              ),
                const Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0),),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Petter Official Store\n',
                          style: TextStyle(
                            fontFamily:'OswaldReg',
                            fontSize: 20, color: Colors.white,
                            ),
                            ),
                      TextSpan(
                          text: 'Followers: 11k | Following: 10k',
                          style: TextStyle(
                            fontFamily: 'OswaldReg',
                            fontSize: 10, color: Colors.white,
                          ),),
                    ]))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Expanded(
            child: RowReuseable(
              row: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'MY PURCHASES',
                          style: TextStyle(
                            fontFamily: 'OswaldReg',
                            fontSize: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10,0, 0, 0),
                        ),
                          Icon(Icons.shopping_cart,
                            size: 25,
                            color: Color(0xffFFFFFF),
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Text(
                            'Lihat Riwayat Pesanan',
                            style: TextStyle(
                              fontFamily: 'OswaldReg',
                              fontSize: 10,
                              color: Color(0xffB5B4B4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Icon(Icons.wallet_sharp,
                  size: 25,
                  color: Color(0xffFFFFFF),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                Text(
                  'To Pay',
                  style: TextStyle(
                    fontFamily: 'OswaldReg',
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Icon(Icons.local_shipping,
                  size: 25,
                  color: Color(0XFFFFFFFF),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                ),
                Text(
                  'To Ship',
                  style: TextStyle(
                    fontFamily: 'OswaldReg',
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Icon(Icons.archive_outlined,
                  size: 25,
                  color: Color(0xffFFFFFF),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                ),
                Text(
                  'To Receive',
                  style: TextStyle(
                    fontFamily: 'OswaldReg',
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Icon(Icons.star_rounded,
                  size: 30,
                  color: Color(0xffFFFFFF),
                ),
                Padding(padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                ),
                Text(
                  'To Rate',
                  style: TextStyle(
                    fontFamily: 'OswaldReg',
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFF6D6E4C),
                borderRadius: BorderRadius.circular(9),
                ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontFamily: 'OswaldReg',
                      fontSize:20,
                      color: Color(0xffFFFFFF),
                      ),
                  )),
              width: 150,
              height: 45,
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}