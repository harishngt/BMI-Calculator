import 'package:get/get.dart';

class BMIController extends GetxController {
  RxString Gender = "Male".obs;
  void genderHandle(String gender) {
    Gender.value = gender;
  }
}
