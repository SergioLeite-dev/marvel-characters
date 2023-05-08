import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/configuration/environment_values.dart';
import 'package:marvel_characters/models/default_response_model.dart';
import 'package:marvel_characters/services/http_client_service.dart';

class HomeController extends GetxController {
  final HttpClientService _client;

  HomeController(
    this._client,
  );

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getCharacters() async {
    try {
      //TODO: Replace inline map with reference to a request model.
      final responseRaw = await _client.get(EnvironmentValues.apiUrl, {"apikey": EnvironmentValues.publicKey, "hash": EnvironmentValues.hash, "ts": "1"});
      debugPrint(responseRaw.toString());
    } on DioError catch (e) {
      debugPrint(e.message);
      debugPrint(e.response.toString());
    }
  }
}
