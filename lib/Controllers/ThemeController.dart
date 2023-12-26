import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  void changeThemeDark() async {
    Get.changeThemeMode(ThemeMode.dark);
  }

  void changeThemeLight() async {
    Get.changeThemeMode(ThemeMode.light);
  }
}
