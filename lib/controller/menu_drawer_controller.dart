import 'package:application_project/menu/history.dart';
import 'package:application_project/menu/home.dart';
import 'package:application_project/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [Home(), History(), Profile()]; 
}