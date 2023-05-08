import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/configuration/environment_values.dart';
import 'package:marvel_characters/models/request/characters_request_model.dart';
import 'package:marvel_characters/models/response/character_model.dart';
import 'package:marvel_characters/models/response/default_response_model.dart';
import 'package:marvel_characters/services/http_client_service.dart';

class HomeController extends GetxController {
  final HttpClientService _client;

  HomeController(this._client);

  var charactersRequest = CharactersRequestModel(offset: 0);
  DefaultResponse? response;
  List<Character> allCharacters = [];

  //Infinite Scroll
  bool finishedInitializing = false;
  bool isLoading = false;
  int pageCount = 0;
  late final ScrollController scrollController;

  @override
  void onInit() {
    getCharacters();
    scrollController = ScrollController(initialScrollOffset: 5.0)..addListener(_scrollListener);
    super.onInit();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> getCharacters() async {
    try {
      final responseRaw = await _client.get(EnvironmentValues.apiUrl, charactersRequest.toMap());
      response = DefaultResponse.fromJson(responseRaw);
      final newCharacters = response?.data?.results ?? [];
      addNewCharactersToAll(newCharacters);
      update();
    } on DioError catch (e) {
      debugPrint(e.message);
      debugPrint(e.response.toString());
    } finally {
      finishedInitializing = true;
    }
  }

  void addNewCharactersToAll(List<Character> characters) {
    for (var c in characters) {
      final existingIndex = allCharacters.indexWhere((i) => i.id == c.id);
      if (existingIndex < 0) {
        allCharacters.add(c);
        debugPrint(c.name);
      }
    }
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent && !scrollController.position.outOfRange) {
      isLoading = true;

      if (isLoading && finishedInitializing) {
        debugPrint("Loading more Characters");
        pageCount++;
        charactersRequest = charactersRequest.copyWith(offset: pageCount * 15);
        getCharacters();
        isLoading = false;
      }
    }
  }
}
