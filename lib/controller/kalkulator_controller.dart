import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class KalkulatorController extends GetxController {
  var finalresult = 0.0.obs;

  void Additions(double num1, double num2) {
    double result = num1 + num2;
    finalresult.value = result;
    Get.snackbar(
      "Addition result",
      "${finalresult}",
      snackPosition: SnackPosition.BOTTOM
    );
  }

  void Subtractions(double num1, double num2) {
    double result = num1 - num2;
    finalresult.value = result;
    Get.snackbar(
      "Subtraction result",
      "${finalresult}",
      snackPosition: SnackPosition.BOTTOM
    );
  }

  void Multiplications(double num1, double num2) {
    double result = num1 * num2;
    finalresult.value = result;
    Get.snackbar(
      "Multiplication result",
      "${finalresult}",
      snackPosition: SnackPosition.BOTTOM
    );
  }

  void Divisions(double num1, double num2) {
    if (num2 == 0) {
      Get.snackbar("Error", "Can't divide by zero!");
      return;
    }
    double result = num1 / num2;
    finalresult.value = result;
    Get.snackbar(
      "Division result",
      "${finalresult}",
      snackPosition: SnackPosition.BOTTOM
    );
  }
}