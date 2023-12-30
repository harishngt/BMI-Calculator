import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;

  const PrimaryButton({
    super.key,
    required this.icon,
    required this.btnName,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Obx(
          () => Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: bmiController.Gender.value == btnName
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: bmiController.Gender.value == btnName
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 10),
                Text(
                  btnName,
                  style: TextStyle(
                      fontSize: 18,
                      color: bmiController.Gender.value == btnName
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
