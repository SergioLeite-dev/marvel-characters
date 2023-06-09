import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/modules/home/controller/home_controller.dart';
import 'package:marvel_characters/modules/home/view/widgets/characters_list_view.dart';
import 'package:marvel_characters/modules/home/view/widgets/get_to_favorites_button.dart';
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
                GetToFavoritesButton(),
                SizedBox(width: 16),
                SearchTextField(),
                SearchButton(),
              ],
            ),
            const SizedBox(height: 10),
            const Expanded(child: CharactersListView()),
            GetBuilder<HomeController>(builder: (_) {
              if (_controller.isLoading) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  height: 20,
                  width: 20,
                  child: const CircularProgressIndicator(),
                );
              }
              return const SizedBox();
            })
          ],
        ),
      ),
    );
  }
}
