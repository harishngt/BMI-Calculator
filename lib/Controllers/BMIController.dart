import 'package:get/get.dart';

class BMIController extends GetxController {
  RxString Gender = "Male".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 130.0.obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }
}
