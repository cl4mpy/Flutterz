import 'package:application_project/menu/history.dart';
import 'package:application_project/menu/home.dart';
import 'package:application_project/menu/profile.dart';
import 'package:application_project/pages/confirm_registration_page.dart';
import 'package:application_project/pages/detail_product_page.dart';
import 'package:application_project/pages/list_product_page.dart';
import 'package:application_project/pages/main_menu_pages.dart';
import 'package:application_project/pages/menu_drawer.dart';
import 'package:application_project/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String productList = "/productList";
  static const String detailProduct = "/detailProduct";
  static const String mainMenu = "/mainMenu";
  static const String menuDrawer = "/menuDrawer";
  static const String home = "/home";
  static const String history = "/history";
  static const String profile = "/profile";

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final pages = [
    GetPage(name: registration, page: () => Registration()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistration()),
    GetPage(name: productList, page: () => ListProductPage()),
    GetPage(name: detailProduct, page: () => DetailProductPage()),
    GetPage(name: mainMenu, page: () => MainMenuPage()),
    GetPage(name: menuDrawer, page: () => MenuDrawer()),
    GetPage(name: home, page: () => Home()),
    GetPage(name: history, page: () => History()),
    GetPage(name: profile, page: () => Profile()),
  ];

}