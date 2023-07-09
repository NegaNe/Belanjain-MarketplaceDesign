import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String url =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png';

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product',
            style: TextStyle(
              fontFamily: 'OswaldReg',
            ),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
            color: Color(0XFF6D6E4C),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                const Text("Rp. 8.999.999",
                    style:
                        TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24,
                          fontFamily: 'OswaldReg',
                          color: Colors.white,
                          ),
                          ),
                const Expanded(
                  child: SizedBox(width: 100),
                ),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OswaldReg',
                        ),
                    )),
                SizedBox(
                  width: 25,
                ),

                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/chat');
                  },
                  child: Container(
                    // padding: EdgeInsets.all(15),
                    
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.message_sharp,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )),
        body: ListView(
          children: [
            Column(
              children: [
                const Image(
                  image: NetworkImage(url),
                  width: 250,
                  height: 250,
                ),
                Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: NetworkImage(url),
                              width: 50,
                              height: 50,
                            ),
                            Image(
                              image: NetworkImage(url),
                              width: 50,
                              height: 50,
                            ),
                            Image(
                              image: NetworkImage(url),
                              width: 50,
                              height: 50,
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),

            //text
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 40,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Sony PlayStation 5',
                  style: TextStyle(
                    fontFamily: 'OswaldReg',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 15),
                alignment: Alignment.center,
                height: 100,
                width: double.infinity,
                child: const Column(
                  children: [
                    SizedBox(
                        height: 50,
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          Text("\t  4.9   ",
                            style: TextStyle(
                              fontFamily: 'OswaldReg'
                            ),
                          ),
                          Text("\t     120 Reviews   ",
                            style: TextStyle(
                              fontFamily: 'OswaldReg',
                            ),
                          )
                        ])),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_sharp,
                          color: Colors.green,
                          size: 30,
                        ),
                        Text("\t  90%   ",
                          style: TextStyle(
                              fontFamily: 'OswaldReg',
                          ),
                        ),
                        Text("\t  (97) recommended this   ",
                          style: TextStyle(
                              fontFamily: 'OswaldReg',
                          ),
                        ),
                      ],
                    )
                  ],
                )),

            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      'Description',
                      style:
                          TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20,
                            fontFamily: 'OswaldReg',
                            ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                              color: Color.fromRGBO(130, 130, 130, 1),
                              fontFamily: 'OswaldReg',
                              ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
