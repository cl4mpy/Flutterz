import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_project/routes.dart';

class MenuDrawerController extends GetxController {
  final List<Map<String, dynamic>> menuItems = [
    {
      'icon': Icons.home,
      'title': 'Home',
      'route': Routes.mainMenu,
    },
    {
      'icon': Icons.history,
      'title': 'History',
      'route': Routes.history,
    },
    {
      'icon': Icons.person,
      'title': 'Profile',
      'route': Routes.profile,
    },
  ];

  void navigateTo(String route) {
    Get.toNamed(route);
  }
}