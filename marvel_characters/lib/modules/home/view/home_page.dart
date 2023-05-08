import 'package:flutter/material.dart';
import 'package:marvel_characters/modules/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller;

  const HomePage(this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marvel Characters"),
      ),
      body: const Center(
        child: Text("Home Page."),
      ),
      //TODO: Testing Purposes:
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _controller.getCharacters();
        },
      ),
    );
  }
}
