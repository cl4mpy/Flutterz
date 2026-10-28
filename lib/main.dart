import 'package:application_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';
import 'kalkulator_page.dart';
import 'login_clone.dart';
import 'pages/login_clone_fix.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter PPLG 3",
      initialRoute: Routes.menuDrawer,
      getPages: Routes.pages,
    );
  }
}
