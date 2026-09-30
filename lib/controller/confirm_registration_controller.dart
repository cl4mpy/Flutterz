import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';

class ConfirmRegistrationController extends GetxController {
  late String name;
  late String alamat;
  late String gender;
  late String noWa;
  late String email;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
 
    name = arguments['name'];
    alamat = arguments['alamat'];
    gender = arguments['jenis_kelamin'];
    noWa = arguments['no_wa'];
    email = arguments['email'];
  }
}
