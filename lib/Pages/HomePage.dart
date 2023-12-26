import 'package:bmi_calculator/Components/PrimaryButton.dart';
import 'package:bmi_calculator/Components/ThemeChangeBtn.dart';
import 'package:bmi_calculator/Controllers/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ThemeChangeBtn(),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              Row(
                children: [
                  PrimaryButton(icon: Icons.male, btnName: "Male"),
                  SizedBox(width: 20),
                  PrimaryButton(icon: Icons.female, btnName: "Female")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
