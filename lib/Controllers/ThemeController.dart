import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  void changeThemeDark() async {
    isDark.value = !isDark.value;
    Get.changeThemeMode(ThemeMode.dark);
  }

  void changeThemeLight() async {
    isDark.value = !isDark.value;
    Get.changeThemeMode(ThemeMode.light);
  }
}
