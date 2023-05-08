import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/modules/home/controller/home_controller.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  static const double height = 40;
  static const double radius = 25;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Expanded(
        child: SizedBox(
          height: height,
          child: TextField(
              controller: controller.filterController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                hintText: "Search Characters",
                filled: true,
                fillColor: Colors.red[50],
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    bottomLeft: Radius.circular(radius),
                  ),
                ),
              ),
              onChanged: (value) {}),
        ),
      );
    });
  }
}
