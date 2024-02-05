import 'package:bmi_calculator/Components/PrimaryButton.dart';
import 'package:bmi_calculator/Components/RactButton.dart';
import 'package:bmi_calculator/Components/ThemeChangeBtn.dart';
import 'package:bmi_calculator/Components/HeightSelector.dart';
import 'package:bmi_calculator/Components/WeightSelector.dart';
import 'package:bmi_calculator/Components/AgeSelector.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Pages/ResultPage.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const ThemeChangeBtn(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text("Welcome ☺️",
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.onBackground)),
                ],
              ),
              Row(
                children: [
                  Text(
                    "BMI Calculator",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  PrimaryButton(
                    onPress: () {
                      bmiController.genderHandle("Male");
                    },
                    icon: Icons.male,
                    btnName: "Male",
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                      onPress: () {
                        bmiController.genderHandle("Female");
                      },
                      icon: Icons.female,
                      btnName: "Female")
                ],
              ),
              const SizedBox(height: 30),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelector(),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeightSelector(),
                          AgeSelector(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              MyRactButton(
                  onPress: () {
                    Get.to(ResultPage());
                  },
                  btnName: "Lets Go",
                  icon: Icons.done_all_rounded),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
