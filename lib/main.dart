import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task_random_colors/homeScreen.dart';

import 'app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      title: 'Flutter Demo',
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
