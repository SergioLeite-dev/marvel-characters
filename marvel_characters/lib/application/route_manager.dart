import 'package:get/get.dart';
import 'package:marvel_characters/models/response/character_model.dart';
import 'package:marvel_characters/modules/details/view/details_page.dart';
import 'package:marvel_characters/modules/favorites/view/favorites_page.dart';
import 'package:marvel_characters/modules/home/home_bindings.dart';
import 'package:marvel_characters/modules/home/view/home_page.dart';

class RouteManager {
  static String home = "/";
  static String details = "/details";
  static String favorites = "/favorites";

  static List<GetPage> routes = [
    GetPage(
      name: home,
      binding: HomeBindings(),
      page: () => HomePage(Get.find()),
    ),
    GetPage(
      name: details,
      page: () {
        Character character = Get.arguments;
        return DetailsPage(character);
      },
    ),
    GetPage(
      name: favorites,
      page: () => FavoritesPage(),
    ),
  ];
}
