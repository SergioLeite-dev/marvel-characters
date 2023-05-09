import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/modules/home/controller/home_controller.dart';
import 'package:marvel_characters/modules/home/view/widgets/character_card.dart';

class CharactersListView extends StatelessWidget {
  const CharactersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          shrinkWrap: true,
          controller: controller.scrollController,
          itemCount: controller.filteredCharacters.length,
          itemBuilder: (context, index) => CharacterCard(controller.filteredCharacters[index]),
        );
      },
    );
  }
}
