import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            color: Colors.green,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                const Text("Rp. 8.999.999",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Expanded(
                  child: SizedBox(width: 100),
                ),
                Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      children: [
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Icon(
                      Icons.message_sharp,
                      color: Colors.white,
                    ),
                  ]),
                )
              ],
            )

            // child: Row(
            //   children: [
            //     Container(
            //       alignment: Alignment.centerLeft,
            //       child: Row(
            //         children: [
            //           const Text(
            //             "Rp. 8.999.999",
            //             style: TextStyle(fontWeight: FontWeight.bold),
            //           ),

            //           Card(
            //             shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(15)
            //             ),
            //             color: Colors.black,
            //             child: const Row(
            //               children: [
            //                 Text(
            //                   "Add to Cart",
            //                   style: TextStyle(color: Colors.white),
            //                   )
            //               ],
            //             ),
            //           )

            //         ],
            //       )
            //     )
            //   ],
            // )
            ),
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                    width: 300,
                    height: 300,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),

            //text
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 40,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Sony Playstation 5',
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Container(
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
                          Text("\t  4.9   "),
                          Text("\t  Rating 120   ")
                        ])),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up_sharp,
                          color: Colors.green,
                          size: 30,
                        ),
                        Text("\t  90%   "),
                        Text("\t  (97) recommended this   ")
                      ],
                    )
                  ],
                )),

            Container(
              height: 200,
              color: Colors.grey,
              child: Column(
                children: [
                  // const SizedBox(
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Description",
                  //         style: TextStyle(fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // ),

                  Container(
                    child: Text(
                      'Description',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
