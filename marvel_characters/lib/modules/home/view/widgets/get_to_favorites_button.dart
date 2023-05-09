import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/application/route_manager.dart';

class GetToFavoritesButton extends StatelessWidget {
  const GetToFavoritesButton({super.key});

  static const double height = 40;
  static const double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(RouteManager.favorites);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const Size.fromRadius(height / 2),
          padding: EdgeInsets.zero,
          shape: const CircleBorder(),
        ),
        child: const Icon(
          Icons.favorite_border,
          size: iconSize,
        ),
      ),
    );
  }
}
