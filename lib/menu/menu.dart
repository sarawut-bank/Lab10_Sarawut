import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/login_signup_btn.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/addnumber/addnum.dart';
import 'package:flutter_auth/calculator/calculate.dart';
import 'package:flutter_auth/foodmenu/foodmenu.dart';
import 'package:flutter_auth/sarahome/mainsara.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return addNum();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: 70,
                      color: Color.fromARGB(255, 225, 103, 247),
                    ),
                    Text(
                      "Add Number",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Mycalculate();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.calculate,
                      size: 70,
                      color: Color.fromARGB(255, 225, 103, 247),
                    ),
                    Text(
                      "Calculator",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyMenuSara();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.coffee,
                      size: 70,
                      color: Color.fromARGB(255, 225, 103, 247),
                    ),
                    Text(
                      "Sara Cafe",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return foodMenupage();
                      },
                    ),
                  );
                }),
                splashColor: Colors.yellow,
                child: Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.food_bank,
                      size: 70,
                      color: Color.fromARGB(255, 225, 103, 247),
                    ),
                    Text(
                      "Food Menu",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
