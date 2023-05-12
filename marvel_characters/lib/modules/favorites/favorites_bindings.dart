import 'package:get/get.dart';
import 'package:marvel_characters/modules/favorites/controller/favorites_controller.dart';

class FavoritesBindings implements Bindings {
  @override
  void dependencies() {
    Get.find<FavoritesController>();
  }
}
