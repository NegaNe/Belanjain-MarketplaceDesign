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
            child: Row(
              children: [
                Image(
                  image: NetworkImage(URL),
                  width: 100,
                  height: 100,
                ),
                // const Column(
                //   children: [
                //     Text(
                //       'Petter Official Store',
                //       style: TextStyle(
                //         fontSize: 20,
                //         color: Color(0xffFFFFFF),
                //         fontWeight: FontWeight.w800,
                //       ),
                //     ),
                //     Row(
                //       children: [
                //         Text(
                //           'Followers: 11k',
                //           style: TextStyle(
                //             fontSize: 10,
                //             color: Color(0xffFFFFFF),
                //           ),
                //         ),
                //         Text(
                //           '\t\t|\t\t',
                //           style: TextStyle(
                //             fontSize: 10,
                //             color: Color(0xffFFFFFF),
                //           ),
                //         ),
                //         Text(
                //           'Following: 30k',
                //           style: TextStyle(
                //             fontSize: 10,
                //             color: Color(0xffFFFFFF),
                //           ),
                //         ),
                //       ],
                //     )
                //   ],
                // ),
                const Row(
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Petter Official Store\n',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      TextSpan(
                          text: 'Followers: 11k | Following: 10k',
                          style: TextStyle(fontSize: 10, color: Colors.white))
                    ]))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          Expanded(
            child: RowReuseable(
              row: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My Purchases',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        Image(
                          image: NetworkImage(URL),
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            'Lihat Riwayat Pesanan',
                            style: TextStyle(
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
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text(
                  'To Pay',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text(
                  'To Ship',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text(
                  'To Receive',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: RowReuseable(
              row: Row(children: [
                Image(
                  image: NetworkImage(URL),
                  width: 50,
                  height: 50,
                ),
                Text(
                  'To Rate',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          SizedBox(
            child: Container(
              decoration: BoxDecoration(color: Color(0XFF6D6E4C)),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  )),
              width: 150,
            ),
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
