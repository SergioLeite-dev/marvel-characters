import 'package:get/get.dart';
import 'package:marvel_characters/models/response/character_model.dart';

class FavoritesController extends GetxController {
  var favorites = <Character>[].obs;

  bool isItemFavorite(int? id) {
    return favorites.any((character) => character.id == id);
  }

  void toggleFavorite(Character character) async {
    final existingIndex = favorites.indexWhere((i) => i.id == character.id);
    if (existingIndex >= 0) {
      favorites.removeAt(existingIndex);
    } else {
      favorites.add(character);
    }
  }
}
