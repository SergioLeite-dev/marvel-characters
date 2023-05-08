import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/application/route_manager.dart';
import 'package:marvel_characters/models/character_model.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character? character;

  @override
  Widget build(BuildContext context) {
    String? thumbPath;
    if (character?.thumbnail?.path != null && character?.thumbnail?.extension != null) {
      thumbPath = "${character!.thumbnail!.path!}.${character!.thumbnail!.extension!}";
    }
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteManager.details, arguments: character);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Hero(
          tag: character!.id!,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: thumbPath != null
                        ? Image.network(
                            thumbPath,
                            fit: BoxFit.cover,
                          )
                        : const Placeholder(),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.85),
                    ),
                    child: Text(
                      character?.name ?? "",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
