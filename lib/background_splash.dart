import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task_random_colors/app_routes.dart';

class BackgroundSplash extends StatefulWidget {
  @override
  _BackgroundSplashState createState() => _BackgroundSplashState();
}

class _BackgroundSplashState extends State<BackgroundSplash> {
  Color color = Colors.white;

  void changeColor() {
    setState(() {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        drawer: menuButton(),
        body: Stack(
          children: [
            InkWell(
              onTap: () {
                changeColor();
              },
              child: Container(
                color: color,
              ),
            ),
            Center(
              child:InkWell(onTap:changeColor,child:  Text('Hey there',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black)),
            ),),
          ],
        ));
  }

  Container menuButton() {
    return Container(
      padding: EdgeInsets.zero,
      width: 250,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                height: 140,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        alignment: Alignment.centerLeft,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      Text("Hello",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      SizedBox(width: 40),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Go to main',
                ),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
              ),
              ListTile(
                title: Text(
                  'Go to background splash',
                ),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  AppBar appBar(){
    return AppBar(
      backgroundColor: Colors.grey[900],
      title: Text("Test App"),
      leading: Builder(builder: (context) {
        return IconButton(
            splashRadius: 1,
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            });
      }),
    );
  }
}
