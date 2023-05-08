import 'package:get/get.dart';
import 'package:marvel_characters/services/http_client_service.dart';

class HomeController extends GetxController {
  final HttpClientService client;

  HomeController(
    this.client,
  );

  @override
  void onInit() {
    super.onInit();
  }
}
