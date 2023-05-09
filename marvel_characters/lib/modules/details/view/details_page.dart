import 'package:flutter/material.dart';
import 'package:marvel_characters/models/response/character_model.dart';
import 'package:marvel_characters/modules/shared/widgets/get_back_button.dart';

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
                tag: character.id!.toString() + character.name!,
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
              padding: const EdgeInsets.fromLTRB(26, 0, 26, 16),
              child: Text(
                (character.description != null && character.description != "") ? character.description! : "No Description available.",
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Text(
              "See also:",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            //RelatedCarousel(),
          ],
        ),
      ),
      floatingActionButton: const GetBackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

// class RelatedCarousel extends StatelessWidget {
//   const RelatedCarousel({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 8),
//       height: 200,
//       padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
//       child: PageView(
//         controller: PageController(viewportFraction: 0.4),
//         padEnds: false,
//         scrollDirection: Axis.horizontal,
//         children: [
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
//             color: Colors.teal,
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
//             //width: 100,
//             color: Colors.deepPurple,
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
//             //width: 100,
//             color: Colors.amber,
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
//             //width: 100,
//             color: Colors.indigo,
//           ),
//           Container(
//             margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
//             //width: 100,
//             color: Colors.deepOrangeAccent,
//           ),
//         ],
//       ),
//     );
//   }
// }
