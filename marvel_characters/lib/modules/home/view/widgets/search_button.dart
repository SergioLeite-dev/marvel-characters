import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});
  static const double height = 40;
  static const double radius = 25;
  static const double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          )),
        ),
        child: const Icon(
          Icons.search,
          size: iconSize,
        ),
      ),
    );
  }
}
