import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './drink.dart';
import './food.dart';

class MyMenuSara extends StatefulWidget {
  const MyMenuSara({Key? key}) : super(key: key);

  @override
  State<MyMenuSara> createState() => _MyMenuSaraState();
}

class _MyMenuSaraState extends State<MyMenuSara> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("SARA CAFE"),
          actions: <Widget>[
            Icon(Icons.shopping_bag),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            )
          ],
          backgroundColor: Colors.purple,
        ),
        body: TabBarView(children: [
          Foodmenu(),
          Drinkmenu(),
        ]),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              text: "Food Menu",
            ),
            Tab(
              text: "Drink Menu",
            )
          ],
          labelColor: Colors.purple,
        ),
      ),
    );
  }
}
