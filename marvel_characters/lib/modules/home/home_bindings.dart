import 'package:get/get.dart';
import 'package:marvel_characters/modules/home/controller/home_controller.dart';
import 'package:marvel_characters/services/http_client_service.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HttpClientService(Get.find()));
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
