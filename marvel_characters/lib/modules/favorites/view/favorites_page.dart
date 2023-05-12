import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/modules/favorites/controller/favorites_controller.dart';
import 'package:marvel_characters/modules/home/view/widgets/character_card.dart';

class FavoritesPage extends StatelessWidget {
  final FavoritesController _controller;
  const FavoritesPage(this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("Your Favorites"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Obx(
          () {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              shrinkWrap: true,
              itemCount: _controller.favorites.length,
              itemBuilder: (context, index) => CharacterCard(_controller.favorites[index]),
            );
          },
        ),
      ),
    );
  }
}
