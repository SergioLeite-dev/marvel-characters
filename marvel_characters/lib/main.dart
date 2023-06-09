import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_characters/application/application_binding.dart';
import 'package:marvel_characters/application/route_manager.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel Characters',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialBinding: ApplicationBinding(),
      getPages: RouteManager.routes,
    );
  }
}
