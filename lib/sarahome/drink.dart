import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drinkmenu extends StatefulWidget {
  const Drinkmenu({Key? key}) : super(key: key);

  @override
  State<Drinkmenu> createState() => _DrinkmenuState();
}

class _DrinkmenuState extends State<Drinkmenu> {
  List<List<dynamic>> drinklists = [
    [
      "https://bluemochateas.com/wp-content/uploads/2021/05/%E0%B9%80%E0%B8%A1%E0%B8%99%E0%B8%B9%E0%B9%82%E0%B8%81%E0%B9%82%E0%B8%81%E0%B9%89%E0%B8%9B%E0%B8%B1%E0%B9%88%E0%B8%99.jpeg.webp",
      "Cocoa Smoothie",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://www.siammakro.co.th/imgadmins/img_detail_food/th/112101.jpg",
      "Matcha Whip",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://image.sistacafe.com/images/uploads/summary/image/4020/1445910237-healthysmoothies_article_1_.jpg",
      "Strawberry Smoothie",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://bluemochateas.com/wp-content/uploads/2021/10/%E0%B8%84%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B9%80%E0%B8%A1%E0%B8%A5%E0%B8%A1%E0%B8%B1%E0%B8%84%E0%B8%84%E0%B8%B4%E0%B8%AD%E0%B8%B2%E0%B9%82%E0%B8%95%E0%B9%89.jpeg",
      "Latte Coffee",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://bakerysw.com/wp-content/uploads/2021/09/%E0%B8%8A%E0%B8%B2%E0%B9%84%E0%B8%97%E0%B8%A2-3.jpg",
      "Thai Tea",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://d1sag4ddilekf6.azureedge.net/compressed_webp/items/THITE2022050204230141265/detail/menueditor_item_d11cda5159ac40ed9f043392bbd1a5fe_1651465209022603268.webp",
      "Fresh Milk Pepo",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://img.wongnai.com/p/1920x0/2016/05/05/f90c11ceb0584075b5eceed174ed6ce8.jpg",
      "Pink Milk",
      69,
      "อร่อยมาก ต้องลอง"
    ],
    [
      "https://foodnakhon.com//pic/cover/s2.jpg",
      "Brown Sugar",
      69,
      "อร่อยมาก ต้องลอง"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: drinklists.length,
        itemBuilder: (_, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(children: [
                Row(
                  children: [
                    Image.network(
                      drinklists[index][0],
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
                                "${drinklists[index][1]}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${drinklists[index][2]} ฿",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "${drinklists[index][3]}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                      backgroundColor: Colors.orange,
                      label: Text(
                        "สั่งซื้อ",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                ),
              ]),
            ),
          );
        });
  }
}
