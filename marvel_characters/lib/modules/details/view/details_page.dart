import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/models/character_model.dart';

class DetailsPage extends StatelessWidget {
  final Character character;
  const DetailsPage(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    String? thumbPath;
    if (character.thumbnail?.path != null && character.thumbnail?.extension != null) {
      thumbPath = "${character.thumbnail!.path!}.${character.thumbnail!.extension!}";
    }
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                tag: character.id!,
                child: thumbPath != null
                    ? Image.network(
                        thumbPath,
                        fit: BoxFit.cover,
                      )
                    : const Placeholder()),
            const SizedBox(height: 18),
            Text(
              character.name ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(35, 6, 35, 16),
              child: Divider(thickness: 0.6, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
              child: Text(
                character.description ?? "",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {
          Get.back();
        },
        child: Icon(Icons.close),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
