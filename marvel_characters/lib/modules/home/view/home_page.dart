import 'package:flutter/material.dart';
import 'package:marvel_characters/modules/home/controller/home_controller.dart';
import 'package:marvel_characters/modules/home/view/widgets/characters_list_view.dart';
import 'package:marvel_characters/modules/home/view/widgets/search_button.dart';
import 'package:marvel_characters/modules/home/view/widgets/search_text_field.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller;

  const HomePage(this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                SearchTextField(),
                SearchButton(),
              ],
            ),
            const SizedBox(height: 10),
            const Expanded(child: CharactersListView()),
          ],
        ),
      ),
    );
  }
}
