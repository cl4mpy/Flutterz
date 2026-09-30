import 'package:application_project/pages/confirm_registration_page.dart';
import 'package:application_project/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final pages = [
    GetPage(name: registration, page: () => Registration()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistration()),
  ];

}