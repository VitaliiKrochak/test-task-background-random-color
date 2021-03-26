
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:test_task_random_colors/background_splash.dart';
import 'package:test_task_random_colors/homeScreen.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.BACKGROUNDSPLASH,
      page: () => BackgroundSplash(),
    ),
  ];
}