import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/models/response/character_model.dart';
import 'package:marvel_characters/modules/favorites/controller/favorites_controller.dart';

class ToggleFavoriteButton extends StatelessWidget {
  ToggleFavoriteButton.small(
    this.character, {
    super.key,
  })  : height = 30,
        iconSize = 22;

  ToggleFavoriteButton.big(
    this.character, {
    super.key,
  })  : height = 42,
        iconSize = 26;

  final controller = Get.find<FavoritesController>();
  final Character? character;
  final double height;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: height,
        child: ElevatedButton(
          onPressed: () {
            if (character != null) controller.toggleFavorite(character!);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[300]!.withOpacity(0.8),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.fromRadius(height / 2),
            padding: EdgeInsets.zero,
            shape: const CircleBorder(),
          ),
          child: controller.isItemFavorite(character?.id)
              ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: iconSize,
                )
              : Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: iconSize,
                ),
        ),
      );
    });
  }
}
