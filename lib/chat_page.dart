import 'package:flutter/material.dart';

// ignore: camel_case_types
class chatPage extends StatelessWidget {
  const chatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(240, 239, 239, 0.984),
        appBar: AppBar(
          title: const Row(children: [
            Image(
              image: NetworkImage(
                  'https://images.tokopedia.net/img/cache/215-square/shops-1/2018/3/19/2972075/2972075_69c19edf-5f84-4569-8226-9a9e51e54559.jpg'),
              width: 50,
              height: 50,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'ASUS Official Store\n',
                  style: TextStyle(fontSize: 16)),
              TextSpan(
                  text: 'Online 11 Minutes Ago', style: TextStyle(fontSize: 11))
            ]))
          ]),
        ),
        bottomNavigationBar: BottomAppBar(
          //Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: const TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: "Tulis Pesan",
                                border: InputBorder.none,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 0,
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 10, left: 10),
                shape: const CircleBorder(),
                child: const Icon(
                  Icons.send,
                  color: Colors.black,
                  size: 28,
                ),
              )
            ],
          ),
        ),
        body: Container(
            // decoration: BoxDecoration(border: Border.all(width: 1)),
            margin: const EdgeInsets.all(15),
            child: Container(
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100, maxWidth: 250),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      'Ada yang bisa dibantu?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 100, maxWidth: 250),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      'Jual lenovo legion tidak?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ]),
            )));
  }
}
