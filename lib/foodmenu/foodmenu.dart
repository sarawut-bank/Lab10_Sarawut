import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class foodMenupage extends StatefulWidget {
  const foodMenupage({Key? key}) : super(key: key);

  @override
  State<foodMenupage> createState() => _foodMenupageState();
}

class _foodMenupageState extends State<foodMenupage> {
  List<List<dynamic>> foodlists = [
    [
      "http://www.diplomacyandcommerce.rs/wp-content/uploads/2021/01/French-Croissants-SM-2363.jpg",
      "Croissant",
      79
    ],
    [
      "https://www.thelovelyair.com/wp-content/uploads/2021/08/Keto-Waffle-%E0%B8%84%E0%B8%B5%E0%B9%82%E0%B8%95-4.jpg",
      "Keto Waffle",
      69
    ],
    [
      "https://www.amorbangkok.com/Image/Product/Cake/9_Mini%20Mille%20Crepe%20and%20Cake.jpg",
      "Cake Strawberry",
      59
    ],
    [
      "https://static5-th.orstatic.com/userphoto/Article/0/4O/000X6PFC1E5D88ACE5CE7Cj.jpg",
      "Roll Strawberry",
      49
    ],
    [
      "https://img.bester-global.com/report_images/large/463330.jpg",
      "Nego Bake",
      89
    ],
    [
      "https://static5-th.orstatic.com/userphoto/Article/0/2K/000I8L1620C8FC7A14B91Aj.jpg",
      "Bread Icecream",
      109
    ],
    [
      "https://pbs.twimg.com/media/EOTl2o6U8AANb0O.jpg",
      "Strawberry Mood Set",
      129
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Menu"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: foodlists.length,
        itemBuilder: (_, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        foodlists[index][0],
                        fit: BoxFit.cover,
                        width: 100,
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${foodlists[index][1]}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${foodlists[index][2]} ฿",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 17,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
