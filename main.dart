import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:firedart/firedart.dart';
const apiKey = "AIzaSyCffng3FKUBsSMepHE1b2FFloZtZrl9OaI";
const projectId = "finalproject-e79ba";

void main() {
  Firestore.initialize(projectId);
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
