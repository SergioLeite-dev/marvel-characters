import 'package:get/get.dart';
import 'package:marvel_characters/modules/home/home_bindings.dart';
import 'package:marvel_characters/modules/home/view/home_page.dart';

class RouteManager {
  static String home = "/";

  static List<GetPage> routes = [
    GetPage(
      name: '/',
      binding: HomeBindings(),
      page: () => HomePage(Get.find()),
    ),
  ];
}
