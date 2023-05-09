import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/modules/favorites/controller/favorites_controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Dio(),
    );
    Get.lazyPut(() => FavoritesController());
  }
}
