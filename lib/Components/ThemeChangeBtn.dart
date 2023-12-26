import 'package:flutter/material.dart';
import 'package:bmi_calculator/Controllers/ThemeController.dart';
import 'package:get/get.dart';

class ThemeChangeBtn extends StatelessWidget {
  const ThemeChangeBtn({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    themeController.changeThemeLight();
                  },
                  icon: const Icon(Icons.light_mode)),
              IconButton(
                  onPressed: () {
                    themeController.changeThemeDark();
                  },
                  icon: const Icon(Icons.dark_mode))
            ],
          ),
        )
      ],
    );
  }
}
