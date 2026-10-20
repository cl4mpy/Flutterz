import 'package:application_project/pages/confirm_registration_page.dart';
import 'package:application_project/pages/detail_product_page.dart';
import 'package:application_project/pages/list_product_page.dart';
import 'package:application_project/pages/main_menu_pages.dart';
import 'package:application_project/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String productList = "/productList";
  static const String detailProduct = "/detailProduct";
  static const String mainMenu = "/mainMenu";

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final pages = [
    GetPage(name: registration, page: () => Registration()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistration()),
    GetPage(name: productList, page: () => ListProductPage()),
    GetPage(name: detailProduct, page: () => DetailProductPage()),
    GetPage(name: mainMenu, page: () => MainMenuPage())
  ];

}