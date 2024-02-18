import 'package:bmi_calculator/Components/SecondaryButton.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer),
      height: 225,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Weight (in Kg)",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondaryContainer),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "${bmiController.weight.value}",
                    style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                  ))
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                  onPress: () {
                    bmiController.weight.value--;
                  },
                  icon: Icons.remove),
              SecondaryButton(
                  onPress: () {
                    bmiController.weight.value++;
                  },
                  icon: Icons.add),
            ],
          ),
        ],
      ),
    );
  }
}
