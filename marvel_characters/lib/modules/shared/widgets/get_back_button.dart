import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetBackButton extends StatelessWidget {
  const GetBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      onPressed: () {
        Get.back();
      },
      child: const Icon(Icons.close),
    );
  }
}
