import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task_random_colors/app_routes.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: menuButton(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              color: Colors.red,
              child: FlatButton(
                onPressed: ()=>Get.toNamed(Routes.BACKGROUNDSPLASH),
                child: Text('Main task',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                    )),
              ),
            ),
          ],
        ),
      ),
    );
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
                  Get.back();
                },
              ),
              ListTile(
                title: Text(
                  'Go to background splash',
                ),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  Get.toNamed(Routes.BACKGROUNDSPLASH);
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
